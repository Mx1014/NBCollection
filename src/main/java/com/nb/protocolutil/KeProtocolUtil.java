/**   
* @Title: KeProtocolUtil.java 
* @Package com.nb.protocolutil 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月4日 上午9:12:04 
* @version V1.0   
*/
package com.nb.protocolutil;

import static com.nb.utils.BytesUtils.*;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.nb.httputil.HttpsClientUtil;
import com.nb.logger.LogName;
import com.nb.logger.LoggerUtil;
import com.nb.mapper.CommonMapper;
import com.nb.model.DeviceInfo;
import com.nb.model.SM4;
import com.nb.model.StreamClosedHttpResponse;
import com.nb.model.ke.KeMsg;
import com.nb.utils.BytesUtils;
import com.nb.utils.CommFunc;
import com.nb.utils.Constant;
import com.nb.utils.ConverterUtils;
import com.nb.utils.DateUtils;

import static com.nb.utils.ConverterUtils.*;
import com.nb.utils.JedisUtils;
import com.nb.utils.NumberUtils;
import com.nb.utils.SM4Utils;

/**
 * @ClassName: KeProtocolUtil
 * @Description: 科林NB水表规约解析工具类
 * @author dbr
 * @date 2019年9月4日 上午9:12:04
 * 
 */
@Component
public class KeProtocolUtil {

	@Resource
	private CommonMapper commonMapper;
	public static KeProtocolUtil keProtocolUtil;

	@PostConstruct
	private void init() {
		keProtocolUtil = this;
		keProtocolUtil.commonMapper = this.commonMapper;
	}

	/**
	 * 解析上报数据帧 @Title: parseDataFrame @param @param
	 * msgJson @param @return @param @throws Exception 设定文件 @return JSONObject
	 * 返回类型 @throws
	 */
	public static JSONObject parseDataFrame(byte[] dataFrame) throws Exception {
		/** 验证接收到的消息，并返回数据部分 */
		KeMsg keMsg = verifyDataFrame(dataFrame);
		if (keMsg == null) {
			return null;
		}

		String control = keMsg.getCtrlCode();
		/** 验证该IMEI对应的设备是否已更新密钥，未更新密钥且控制码不等于C0AF,略过 */
		if (!control.equals(Constant.C0AF) && JedisUtils.get(Constant.DEVICE_KEY + keMsg.getImei()) != null) {
			LoggerUtil.logger(LogName.INFO).info("设备[" + keMsg.getImei() + "]未更新密钥开始上报，直接丢弃");
			return null;
		}

		byte[] data = keMsg.getData();
		if (data == null || data.length == Constant.ZERO) {
			return null;
		}
		JSONObject dataJson = new JSONObject();
		switch (control) {
		case Constant.C0AF:
			dataJson = parseC0AF(keMsg);
			break;
		case Constant.C0A0:
			dataJson = parseC0A0(keMsg);
			break;
		case Constant.C0A1:

			break;
		case Constant.C0A2:

			break;
		case Constant.C0A3:

			break;
		case Constant.C0A4:

			break;
		case Constant.C0A5:

			break;
		case Constant.C0A6:

			break;
		case Constant.C0A7:

			break;
		default:
			break;
		}
		return dataJson;
	}

	/**
	 * (这里用一句话描述这个方法的作用) @Title: parseC0A0 @param @param keMsg @param @return
	 * 设定文件 @return JSONObject 返回类型 @throws
	 */
	private static JSONObject parseC0A0(KeMsg keMsg) {
		JSONObject rtnJson = new JSONObject();
		String imei = String.format("%016d", toLong(keMsg.getImei()));

		String secretKey = JedisUtils.get(imei);
		SM4Utils sm4 = new SM4Utils();
		sm4.secretKey = secretKey;
		sm4.hexString = false;

		/** 解密数据域 */
		byte[] data = sm4.decryptDataECB(keMsg.getData());
		if (null == data) {
			return null;
		}
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		try {
			/** 日冻结时间 */
			byte[] data0 = new byte[Constant.SIX];
			dis.read(data0);
			String freezeDate = BytesUtils.bcdToString(data0);

			/** 日冻结表底 */
			byte[] data1 = new byte[Constant.FOUR];
			dis.read(data1);
			double totalFlow = getDouble(invertArray(data1)) / Constant.NUM_1000;

			/** 当前正向累计流量 */
			byte[] data2 = new byte[Constant.FOUR];
			dis.read(data2);
			double totalPositiveFlow = getDouble(invertArray(data2)) / Constant.NUM_1000;

			/** 当前反向累计流量 */
			byte[] data3 = new byte[Constant.FOUR];
			dis.read(data3);
			double totalNegativeFlow = getDouble(invertArray(data3)) / Constant.NUM_1000;

			/** 冻结前一日正向累计流量 */
			byte[] data4 = new byte[Constant.FOUR];
			dis.read(data4);
			double dailyPositiveFlow = getDouble(invertArray(data4)) / Constant.NUM_1000;

			/** 冻结前一日反向累计流量 */
			byte[] data5 = new byte[Constant.FOUR];
			dis.read(data5);
			double dailyNegativeFlow = getDouble(invertArray(data5)) / Constant.NUM_1000;

			/** 冻结前一日瞬时量 */
			byte[] data6 = new byte[Constant.NUM_96];
			dis.read(data6);

			/** 备用字节 */
			byte[] data7 = new byte[Constant.TEN];
			dis.read(data7);

			/** 水表时钟 SSMMHHDDMMYY */
			byte[] data8 = new byte[Constant.SIX];
			dis.read(data8);

			/** 电池电压 */
			byte[] data9 = new byte[Constant.ONE];
			dis.read(data9);
			double batteryVoltage = getDouble(data9) / Constant.TEN;

			/** 版本号 */
			byte[] data10 = new byte[Constant.FIVE];
			dis.read(data10);
			String version = hexToAscii(bytesToHex(data10));

			/** 阀门状态 */
			byte valveStatus = dis.readByte();

			/** 前一日最大流速 */
			byte[] data12 = new byte[Constant.TWO];
			dis.read(data12);
			double dailyMaxVelocity = getDouble(invertArray(data12)) / Constant.NUM_1000;

			/** 前一日最大流速发生时间 */
			byte[] data13 = new byte[Constant.SIX];
			dis.read(data13);
			String dailyMaxVelocityTime = BytesUtils.bcdToString(data13);

			/** 上报基准时间 */
			byte[] data14 = new byte[Constant.SIX];
			dis.read(data14);
			String reportBaseTime = BytesUtils.bcdToString(data14);

			/** 上报时间间隔 0-25 单位小时 */
			byte data15 = dis.readByte();

			/** 大流量告警阀值 */
			byte[] data16 = new byte[Constant.TWO];
			dis.read(data16);
			short largeFlowAlarmThreshold = getShort(invertArray(data16));
			/** 大流量告警持续时间 */
			byte largeFlowAlarmThresholdTime = dis.readByte();

			/** 小流量告警阀值 */
			byte[] data18 = new byte[Constant.TWO];
			dis.read(data18);
			double smallFlowAlarmThreshold = getDouble(invertArray(data12)) / Constant.TEN;
			/** 小流量告警持续时间 */
			byte smallFlowAlarmThresholdTime = dis.readByte();
			/** 长时间用水阀值 */
			byte longTimeUseWaterThresholdTime = dis.readByte();

			/** 电池低电压告警阀值 */
			byte[] data21 = new byte[Constant.ONE];
			dis.read(data21);
			double lowVoltageAlarmThreshold = getDouble(data21) / Constant.TEN;
			/** 高压告警阀值 */
			byte data22 = dis.readByte();
			/** 低压告警阀值 */
			byte data23 = dis.readByte();

			/** 备用字节 */
			byte[] data24 = new byte[Constant.TEN];
			dis.read(data24);

			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);

			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[Constant.NUM_188];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imei);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imei);
				return null;
			}

			/** 存库操作 nb_daily_data_200808 nb_instantaneous_200808 */
			
 			rtnJson.put("control", "C0A0");
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}

	private void saveDailyData(String freezeDate, double totalFlow, double totalPositiveFlow, double totalNegativeFlow,
			double dailyPositiveFlow, double dailyNegativeFlow, double dailyMaxVelocity, String dailyMaxVelocityTime,
			double batteryVoltage, String valveStatus) {

	}

	/**
	 * 解析设备请求更新密钥，剩下新密钥后存入redis，然后下发直接命令下发40AF @Title: parseC0AF @param @param
	 * keMsg @param @return 设定文件 @return JSONObject 返回类型 @throws
	 */
	private static JSONObject parseC0AF(KeMsg keMsg) {
		JSONObject rtnJson = new JSONObject();
		String defaultKey = String.format("%016d", toLong(keMsg.getImei()));
		SM4Utils sm4 = new SM4Utils();
		sm4.secretKey = defaultKey;
		sm4.hexString = false;
		/** 解密数据域 */
		byte[] data = sm4.decryptDataECB(keMsg.getData());
		/** 解密失败 如何处理 告警手动处理 ？ 自动处理？ */
		if (null == data) {
			return null;
		}
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);

		try {
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imei = BytesUtils.bcdToString(imeiBytes);
			/** 默认密钥 */
			byte[] keyBytes = new byte[Constant.NUM_16];
			dis.read(keyBytes);
			String key = new String(keyBytes);
			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dis.read(back);
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[Constant.NUM_34];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imei);
				return null;
			}

			if (!imei.equals(keMsg.getImei()) || !key.equals(defaultKey)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei或者默认密钥不匹配，直接丢掉", imei);
				return null;
			}

			rtnJson.put("control", "C0AF");
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		return rtnJson;
	}

	/**
	 * 组建40AF帧 @Title: make40AFFrame @param @param imei @param @return 设定文件 @return
	 * String 返回类型 @throws
	 */
	public static String make40AFFrame(String imei) {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(bos);
		String dataFrame = null;
		imei = String.format("%016d", toLong(imei));
		try {
			/** 起始字符 */
			dos.writeByte(0x68);
			/** 规约类型 */
			dos.writeByte(0x20);
			/** 消息属性 */
			dos.writeByte(0x01);
			/** imei */
			byte[] imeiBcd = BytesUtils.str2Bcd(imei);
			dos.write(imeiBcd);
			/** 控制码 */
			dos.writeShort(0x40AF);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** 处理结果 */
			dataDos.write(0x00);
			int keyNo = (int) (toLong(imei) % 10);
			/** 新密钥 */
			String secretKey = SM4.getSecretKey(keyNo, imei);
			dataDos.write(secretKey.getBytes());
			/** 母钥编号 */
			dataDos.write(toByte(keyNo));

			/** imei */
			dataDos.write(imeiBcd);
			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));
			/** 使用默认密钥加密 */
			SM4Utils sm4 = new SM4Utils();
			sm4.secretKey = imei;
			sm4.hexString = false;
			byte[] encryptedData = sm4.encryptDataECB(dataBos.toByteArray());
			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());
			/** 将新密钥存入redis */
			JedisUtils.set(imei, secretKey);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}

	/**
	 * 验证消息，并返回数据部分 @Title: verifyDataFrames @param @param
	 * msg @param @return @param @throws Exception 设定文件 @return KeMsg 返回类型 @throws
	 */
	private static KeMsg verifyDataFrame(byte[] msg) {

		ByteArrayInputStream bais = new ByteArrayInputStream(msg);
		DataInputStream dis = new DataInputStream(bais);
		KeMsg keMsg = null;
		try {
			/** 起始字符 */
			byte frameStart = dis.readByte();
			if (frameStart != 0x68) {
				System.out.println("起始字符错误");
				return null;
			}

			/** 规约类型 */
			byte protocolType = dis.readByte();
			if (protocolType != 0x20) {
				System.out.println("规约类型错误");
				return null;
			}

			/** 消息属性 */
			byte msgType = dis.readByte();

			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imei = BytesUtils.bcdToString(imeiBytes);

			/** 控制码 */
			byte[] control = new byte[Constant.TWO];
			dis.read(control);
			String ctrlCode = bytesToHex(control);

			/** 数据长度 */
			byte[] len = new byte[Constant.TWO];
			dis.read(len);
			/** 数据 */
			short dataLength = getReserveShort(len);

			byte[] datas = new byte[dataLength];
			dis.read(datas);

			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[Constant.TEN + Constant.FIVE + dataLength];
			System.arraycopy(msg, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				System.out.println("CRC校验失败 " + bytesToHex(crc) + ":" + calcCrc);
				return null;
			}

			/** 结束字符 */
			byte end = dis.readByte();
			if (end != 0x16) {
				System.out.println("结束字符错误");
				return null;
			}

			keMsg = new KeMsg(msgType, imei, ctrlCode, datas);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		return keMsg;
	}
}
