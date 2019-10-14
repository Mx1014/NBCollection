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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSONObject;
import com.nb.logger.LogName;
import com.nb.logger.LoggerUtil;
import com.nb.mapper.CommonMapper;
import com.nb.mapper.ke.NbWaterMeterMapper;
import com.nb.model.SM4;
import com.nb.model.ke.Eve;
import com.nb.model.ke.KeMsg;
import com.nb.model.ke.NbDailyData;
import com.nb.model.ke.NbInstantaneous;
import com.nb.model.ke.NbWaterMeter;
import com.nb.utils.BytesUtils;
import com.nb.utils.CommFunc;
import com.nb.utils.Constant;
import static com.nb.utils.DateUtils.*;

import static com.nb.utils.ConverterUtils.*;
import com.nb.utils.JedisUtils;
import com.nb.utils.JsonUtil;
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
	@Resource
	private NbWaterMeterMapper nbWaterMeterMapper;
		
	public static KeProtocolUtil keProtocolUtil;

	@PostConstruct
	private void init() {
		keProtocolUtil = this;
		keProtocolUtil.commonMapper = this.commonMapper;
		keProtocolUtil.nbWaterMeterMapper = this.nbWaterMeterMapper;
	}
	 
	/** 
	*  解析上报数据帧 
	* @Title: parseDataFrame 
	* @param @param dataFrame
	* @param @return
	* @param @throws Exception    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
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
		
		String imei = toStr(toLong(keMsg.getImei()));
		/** 判断设备是否合法 */
		if (!keProtocolUtil.nbWaterMeterMapper.isExistImei(imei)) {
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
			dataJson = parseC0A1(keMsg);
			break;
		case Constant.C0A2:
			dataJson = parseC0A2(keMsg);
			break;
		case Constant.C0A3:
			dataJson = parseC0A3(keMsg);
			break;
		case Constant.C0A4:
			dataJson = parseC0A4(keMsg);
			break;
		case Constant.C0A5:
			dataJson = parseC0A5(keMsg);
			break;
		case Constant.C0A6:
			dataJson = parseC0A6(keMsg);
			break;
		case Constant.C0A7:
			dataJson = parseC0A7(keMsg);
			break;
		default:
			break;
		}
		return dataJson;
	}
	
	
	/** 
	* 告警立即上报
	* @Title: parseC0A1 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A1(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** 告警上报时间 */
			byte[] data0 = new byte[Constant.SIX];
			dis.read(data0);
			String reportDate = BytesUtils.bcdToString(data0);
			dataLength += data0.length;
			/** 大流量告警 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 大流量告警发生值 */
			byte[] data2 = new byte[Constant.TWO];
			dis.read(data2);
			dataLength += data2.length;
			short largeFlowValue = getShort(data2);
			/** 大流量告警发生时间 */
			byte[] data3 = new byte[Constant.SIX];
			dis.read(data3);
			String largeFlowDate = BytesUtils.bcdToString(data3);
			dataLength += data3.length;

			/** 小流量告警 */
			byte data4 = dis.readByte();
			dataLength += Constant.ONE;
			/** 小流量告警发生值 */
			byte[] data5 = new byte[Constant.TWO];
			dis.read(data5);
			double smallFlowValue = toDouble(getShort(data5)) / Constant.TEN;
			dataLength += data5.length;
			/** 小流量告警发生时间 */
			byte[] data6 = new byte[Constant.SIX];
			dis.read(data6);
			String smallFlowDate = BytesUtils.bcdToString(data6);
			dataLength += data6.length;

			/** 反向告警 */
			byte data7 = dis.readByte();
			dataLength += Constant.ONE;
			/** 磁干扰告警 */
			byte data8 = dis.readByte();
			dataLength += Constant.ONE;
			/** 电池低电压告警 */
			byte data9 = dis.readByte();
			dataLength += Constant.ONE;
			/** 电池电压 */
			byte data10 = dis.readByte();
			double batteryVoltage = toDouble(data10) / Constant.TEN;
			dataLength += Constant.ONE;

			/** 数据被篡改 */
			byte data11 = dis.readByte();
			dataLength += Constant.ONE;
			/** 内部错误 */
			byte data12 = dis.readByte();
			dataLength += Constant.ONE;
			/** 远传模块分离 */
			byte data13 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data14 = new byte[Constant.TEN];
			dis.read(data14);
			dataLength += data14.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			/** 存入redis */
			Date reportBaseDate = CommFunc.parseKeTime(reportDate);
			imeiCode = toStr(toLong(imeiCode));
			NbWaterMeter nbWaterMeter = keProtocolUtil.nbWaterMeterMapper.getNbWaterMeter(imeiCode);

			int ymd = toInt(formatDateByFormat(reportBaseDate, "yyyyMMdd"));
			int hmsms = toInt(formatDateByFormat(reportBaseDate, "HHmmss")) * Constant.NUM_1000;
			Eve eve = new Eve(ymd, hmsms, nbWaterMeter.getRtuId(), toInt(nbWaterMeter.getMpId()));
			if (data1 == Constant.ONE) {
				StringBuffer sb = new StringBuffer();
				sb.append("发生时间：").append(formatTimesTampDate(CommFunc.parseKeTime(largeFlowDate)));
				sb.append(",").append("发生值：").append(largeFlowValue).append("立方米");
				eve.setCharInfo(sb.toString());
				eve.setTypeno(Constant.ALARM_2001);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data4 == Constant.ONE) {
				StringBuffer sb = new StringBuffer();
				sb.append("发生时间：").append(formatTimesTampDate(CommFunc.parseKeTime(smallFlowDate)));
				sb.append(",").append("发生值：").append(smallFlowValue).append("立方米");
				eve.setCharInfo(sb.toString());
				eve.setTypeno(Constant.ALARM_2002);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data7 == Constant.ONE) {
				eve.setCharInfo("反流告警");
				eve.setTypeno(Constant.ALARM_2003);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data8 == Constant.ONE) {
				eve.setCharInfo("磁干扰告警");
				eve.setTypeno(Constant.ALARM_2004);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data9 == Constant.ONE) {
				eve.setCharInfo("电池低电压告警，电池电压：" + batteryVoltage);
				eve.setTypeno(Constant.ALARM_2005);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data11 == Constant.ONE) {
				eve.setCharInfo("数据被篡改");
				eve.setTypeno(Constant.ALARM_2012);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data12 == Constant.ONE) {
				eve.setCharInfo("内部错误");
				eve.setTypeno(Constant.ALARM_2007);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			if (data13 == Constant.ONE) {
				eve.setCharInfo("远传模块分离");
				eve.setTypeno(Constant.ALARM_2006);
				JedisUtils.lpush(Constant.ALARM_EVENT_QUEUE, JsonUtil.jsonObj2Sting(eve));
			}

			rtnJson.put(Constant.CONTROL, "C0A1");
			rtnJson.put(Constant.IMEI, keMsg.getImei());

		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 阀门控制响应 
	* @Title: parseC0A2 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A2(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais); 
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 执行结果 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data2 = new byte[Constant.NINE];
			dis.read(data2);
			dataLength += data2.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			
			rtnJson.put(Constant.CONTROL, "C0A2");
			rtnJson.put(Constant.IMEI, keMsg.getImei());
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 限值设置响应
	* @Title: parseC0A3 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A3(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 执行结果 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data2 = new byte[Constant.NINE];
			dis.read(data2);
			dataLength += data2.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			
			rtnJson.put(Constant.CONTROL, "C0A3");
			rtnJson.put(Constant.IMEI, keMsg.getImei());
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 召历史数据响应
	* @Title: parseC0A4 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A4(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 执行结果 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data2 = new byte[Constant.NINE];
			dis.read(data2);
			dataLength += data2.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 数据点数 */
			byte data4 = dis.readByte();
			dataLength += Constant.ONE;
			byte[] data5 = new byte[Constant.NUM_130 * data4];
			dis.read(data5);
			dataLength += data5.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			saveRecallData(imeiCode, data4, data5);
			rtnJson.put(Constant.CONTROL, "C0A4");
			rtnJson.put(Constant.IMEI, keMsg.getImei());
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 保存补招数据 
	* @Title: saveRecallData 
	* @param @param count
	* @param @param data    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private static void saveRecallData(String imei, byte count, byte[] data) {
		if (count != data.length / Constant.NUM_130) {
			return;
		}
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		try {
			for (int i = 0; i < count; i++) {
				/** 日冻结时间 */
				byte[] data0 = new byte[Constant.SIX];
				dis.read(data0);
				String freezeDate = BytesUtils.bcdToString(data0);

				/** 日冻结表底 */
				byte[] data1 = new byte[Constant.FOUR];
				dis.read(data1);
				double totalFlow = toDouble(getInt(invertArray(data1))) / Constant.NUM_1000;

				/** 当前正向累计流量 */
				byte[] data2 = new byte[Constant.FOUR];
				dis.read(data2);
				double totalPositiveFlow = toDouble(getInt(invertArray(data2))) / Constant.NUM_1000;

				/** 当前反向累计流量 */
				byte[] data3 = new byte[Constant.FOUR];
				dis.read(data3);
				double totalNegativeFlow = toDouble(getInt(invertArray(data3))) / Constant.NUM_1000;

				/** 冻结前一日正向累计流量 */
				byte[] data4 = new byte[Constant.FOUR];
				dis.read(data4);
				double dailyPositiveFlow = toDouble(getInt(invertArray(data4))) / Constant.NUM_1000;

				/** 冻结前一日反向累计流量 */
				byte[] data5 = new byte[Constant.FOUR];
				dis.read(data5);
				double dailyNegativeFlow = toDouble(getInt(invertArray(data5))) / Constant.NUM_1000;

				/** 冻结前一日瞬时量 */
				byte[] data6 = new byte[Constant.NUM_96];
				dis.read(data6);

				/** 前一日最大流速 */
				byte[] data7 = new byte[Constant.TWO];
				dis.read(data7);
				double dailyMaxVelocity = toDouble(getShort(invertArray(data7))) / Constant.NUM_1000;

				/** 前一日最大流速发生时间 */
				byte[] data8 = new byte[Constant.SIX];
				dis.read(data8);
				String dailyMaxVelocityTime = BytesUtils.bcdToString(data8);
				
				imei = toStr(toLong(imei));
				NbWaterMeter nbWaterMeter = keProtocolUtil.nbWaterMeterMapper.getNbWaterMeter(imei);
				saveDailyData(nbWaterMeter, freezeDate, totalFlow, totalPositiveFlow, totalNegativeFlow, dailyPositiveFlow,
						dailyNegativeFlow, dailyMaxVelocity, dailyMaxVelocityTime, null, null);
				
				saveInstantaneousData(nbWaterMeter, freezeDate, data6);
			}
		} catch (Exception e) {
			e.printStackTrace();
			LoggerUtil.logger(LogName.ERROR).error("补招数据解析异常，设备：" + imei+",数据："+ bytesToHex(data));
		}
	}
	
	/** 
	* 设置主站参数应答 
	* @Title: parseC0A5 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A5(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 执行结果 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data2 = new byte[Constant.NINE];
			dis.read(data2);
			dataLength += data2.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			
			rtnJson.put(Constant.CONTROL, "C0A5");
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 更新设备密钥响应
	* @Title: parseC0A6 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A6(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 密钥 */
			byte[] data1 = new byte[Constant.NUM_16];
			dis.read(data1);
			dataLength += data1.length;
			/** 母钥版本 */
			byte data2 = dis.readByte();
			dataLength += Constant.ONE;
			/** 执行结果 */
			byte data3 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data4 = new byte[Constant.NINE];
			dis.read(data4);
			dataLength += data4.length;
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			
			rtnJson.put(Constant.CONTROL, "C0A6");
			rtnJson.put(Constant.IMEI, keMsg.getImei());
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	*  召母钥版本响应 
	* @Title: parseC0A7 
	* @param @param keMsg
	* @param @return
	* @param @throws ParseException    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A7(KeMsg keMsg) throws ParseException {
		/** 解密数据域 */
		byte[] data = keMsg.getData();
		if (null == data) {
			return null;
		}

		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** mid */
			byte[] data0 = new byte[Constant.TWO];
			dis.read(data0);
			dataLength += data0.length;
			/** 母钥版本 */
			byte data1 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data2 = new byte[Constant.NINE];
			dis.read(data2);
			dataLength += data2.length;

			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;

			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);

			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}

			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			
			rtnJson.put(Constant.CONTROL, "C0A6");
			rtnJson.put(Constant.IMEI, keMsg.getImei());
			rtnJson.put(Constant.RESULT, data1);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	
	
	/**
	 * @throws ParseException  
	* 解析C0A0帧
	* @Title: parseC0A0 
	* @param @param keMsg
	* @param @return    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0A0(KeMsg keMsg) throws ParseException {
	
		/** 解密数据域 */
		byte[] data = CommFunc.decryptDataECB(keMsg);
		if (null == data) {
			LoggerUtil.logger(LogName.ERROR).error(keMsg.getImei() + "，设备解密失败");
			return null;
		}
		
		JSONObject rtnJson = new JSONObject();
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** 日冻结时间 */
			byte[] data0 = new byte[Constant.SIX];
			dis.read(data0);
			String freezeDate = BytesUtils.bcdToString(data0);
			dataLength += data0.length;
			/** 日冻结表底 */
			byte[] data1 = new byte[Constant.FOUR];
			dis.read(data1);
			double totalFlow = toDouble(getInt(invertArray(data1))) / Constant.NUM_1000;
			dataLength += data1.length;
			/** 当前正向累计流量 */
			byte[] data2 = new byte[Constant.FOUR];
			dis.read(data2);
			double positivetotalFlow = toDouble(getInt(invertArray(data2))) / Constant.NUM_1000;
			dataLength += data2.length;

			/** 当前反向累计流量 */
			byte[] data3 = new byte[Constant.FOUR];
			dis.read(data3);
			double negativeTotalFlow = toDouble(getInt(invertArray(data3))) / Constant.NUM_1000;
			dataLength += data3.length; 

			/** 冻结前一日正向累计流量 */
			byte[] data4 = new byte[Constant.FOUR];
			dis.read(data4);
			double dailyPositiveFlow = toDouble(getInt(invertArray(data4))) / Constant.NUM_1000;
			dataLength += data4.length; 
			/** 冻结前一日反向累计流量 */
			byte[] data5 = new byte[Constant.FOUR];
			dis.read(data5);
			double dailyNegativeFlow = toDouble(getInt(invertArray(data5)))/ Constant.NUM_1000;
			dataLength += data5.length; 
			/** 冻结前一日瞬时量 */
			byte[] data6 = new byte[Constant.NUM_96];
			dis.read(data6);
			dataLength += data6.length; 
			/** 备用字节 */
			byte[] data7 = new byte[Constant.TEN];
			dis.read(data7);
			dataLength += data7.length; 
			/** 水表时钟 SSMMHHDDMMYY */
			byte[] data8 = new byte[Constant.SIX];
			dis.read(data8);
			dataLength += data8.length; 
			/** 电池电压 */
			byte data9 = dis.readByte();
 			double batteryVoltage = toDouble(data9) / Constant.TEN;
 			dataLength += Constant.ONE;
			/** 版本号 */
			byte[] data10 = new byte[Constant.FIVE];
			dis.read(data10);
			String version = hexToAscii(bytesToHex(data10));
			dataLength += data10.length; 
			/** 阀门状态 */
			byte valveStatus = dis.readByte();
			dataLength += Constant.ONE;
			/** 前一日最大流速 */
			byte[] data12 = new byte[Constant.TWO];
			dis.read(data12);
			double dailyMaxVelocity = toDouble(getShort(invertArray(data12))) / Constant.NUM_1000;
			dataLength += data12.length; 
			/** 前一日最大流速发生时间 */
			byte[] data13 = new byte[Constant.SIX];
			dis.read(data13);
			String dailyMaxVelocityTime = BytesUtils.bcdToString(data13);
			dataLength += data13.length; 

			/** 上报基准时间 */
			byte[] data14 = new byte[Constant.SIX];
			dis.read(data14);
			String reportBaseTime = BytesUtils.bcdToString(data14);
			dataLength += data14.length; 

			/** 上报时间间隔 0-25 单位小时 */
			byte data15 = dis.readByte();
			dataLength += Constant.ONE;
			/** 大流量告警阀值 */
			byte[] data16 = new byte[Constant.TWO];
			dis.read(data16);
			short largeFlowAlarmThreshold = getShort(invertArray(data16));
			dataLength += data16.length; 
			/** 大流量告警持续时间 */
			byte largeFlowAlarmThresholdTime = dis.readByte();
			dataLength += Constant.ONE;
			/** 小流量告警阀值 */
			byte[] data18 = new byte[Constant.TWO];
			dis.read(data18);
			double smallFlowAlarmThreshold = toDouble(getShort(invertArray(data18))) / Constant.TEN;
			dataLength += data18.length; 

			/** 小流量告警持续时间 */
			byte smallFlowAlarmThresholdTime = dis.readByte();
			dataLength += Constant.ONE;
			/** 长时间用水阀值 */
			byte longTimeUseWaterThresholdTime = dis.readByte();
			dataLength += Constant.ONE;
			/** 电池低电压告警阀值 */
			byte data21 = dis.readByte();
 			double lowVoltageAlarmThreshold = toDouble(data21) / Constant.TEN;
			dataLength += Constant.ONE;
			/** 高压告警阀值 */
			byte data22 = dis.readByte();
			dataLength += Constant.ONE;
			/** 低压告警阀值 */
			byte data23 = dis.readByte();
			dataLength += Constant.ONE;
			/** 备用字节 */
			byte[] data24 = new byte[Constant.TEN];
			dis.read(data24);
			dataLength += data24.length;

			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			String imeiCode = BytesUtils.bcdToString(imeiBytes);
			dataLength += imeiBytes.length;

			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);
			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
			System.arraycopy(data, Constant.ZERO, crcData, Constant.ZERO, crcData.length);
			String calcCrc = getReserveCrc(crcData);
			/** 验证CRC与计算值 */
			if (!bytesToHex(crc).equals(calcCrc)) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}crc校验失败", imeiCode);
				return null;
			}
			if (!imeiCode.equals(keMsg.getImei())) {
				LoggerUtil.logger(LogName.ERROR).error("设备{}imei不匹配，直接丢掉", imeiCode);
				return null;
			}
			/** 存库操作 nb_daily_data_200808 nb_instantaneous_200808 */
			imeiCode = toStr(toLong(imeiCode));
			NbWaterMeter nbWaterMeter = keProtocolUtil.nbWaterMeterMapper.getNbWaterMeter(imeiCode);
			
			updateNbWaterMeter(nbWaterMeter, version, lowVoltageAlarmThreshold, data23, data22, largeFlowAlarmThreshold,
					largeFlowAlarmThresholdTime, longTimeUseWaterThresholdTime, smallFlowAlarmThreshold,
					smallFlowAlarmThresholdTime, reportBaseTime, data15, valveStatus);
			
			saveDailyData(nbWaterMeter, freezeDate, totalFlow, positivetotalFlow, negativeTotalFlow, dailyPositiveFlow,
					dailyNegativeFlow, dailyMaxVelocity, dailyMaxVelocityTime, batteryVoltage, valveStatus);
			
			saveInstantaneousData(nbWaterMeter, freezeDate, data6);
			
			rtnJson.put(Constant.CONTROL, "C0A0");
			rtnJson.put(Constant.IMEI, keMsg.getImei());

		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		return rtnJson;
	}
	
	/** 
	* 更新水表参数
	* @Title: updateNbWaterMeter 
	* @param @param nbWaterMeter
	* @param @param version
	* @param @param lowVoltageAlarmThreshold
	* @param @param data23
	* @param @param data22
	* @param @param largeFlowAlarmThreshold
	* @param @param largeFlowAlarmThresholdTime
	* @param @param longTimeUseWaterThresholdTime
	* @param @param smallFlowAlarmThreshold
	* @param @param smallFlowAlarmThresholdTime
	* @param @param reportBaseTime
	* @param @param data15
	* @param @param valveStatus    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private static void updateNbWaterMeter(NbWaterMeter nbWaterMeter, String version, double lowVoltageAlarmThreshold,
			byte data23, byte data22, short largeFlowAlarmThreshold, byte largeFlowAlarmThresholdTime,
			byte longTimeUseWaterThresholdTime, double smallFlowAlarmThreshold, byte smallFlowAlarmThresholdTime,
			String reportBaseTime, byte data15, byte valveStatus) {
		nbWaterMeter.setFirmwareVersion(version);
		nbWaterMeter.setLowVoltageThreshold(lowVoltageAlarmThreshold);
		nbWaterMeter.setLowPressureThreshold(toDouble(data23));
		nbWaterMeter.setHighPressureThreshold(toDouble(data22));
		nbWaterMeter.setLargeFlowThreshold(toDouble(largeFlowAlarmThreshold));
		nbWaterMeter.setLargeFlowDuration(toInt(largeFlowAlarmThresholdTime));
		nbWaterMeter.setLongTimeWaterUseThreshold(toInt(longTimeUseWaterThresholdTime));
		nbWaterMeter.setSmallFlowThreshold(smallFlowAlarmThreshold);
		nbWaterMeter.setSmallFlowDuration(toInt(smallFlowAlarmThresholdTime));

		Date reportBaseDate = CommFunc.parseKeTime(reportBaseTime);
		nbWaterMeter.setReportBaseTime(formatTimesTampDate(reportBaseDate));
		nbWaterMeter.setReportIntervalTime(toInt(data15));
		nbWaterMeter.setValveStatus(valveStatus);
		keProtocolUtil.nbWaterMeterMapper.updateNbWaterMeter(nbWaterMeter);
	}
	
	/**
	 * @throws ParseException  
	* 组建水表上报日数据，存入redis队列
	* @Title: saveDailyData 
	* @param @param nbWaterMeter
	* @param @param freezeDate
	* @param @param totalFlow
	* @param @param totalPositiveFlow
	* @param @param totalNegativeFlow
	* @param @param dailyPositiveFlow
	* @param @param dailyNegativeFlow
	* @param @param dailyMaxVelocity
	* @param @param dailyMaxVelocityTime
	* @param @param batteryVoltage
	* @param @param valveStatus    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private static void saveDailyData(NbWaterMeter nbWaterMeter, String freezeDate, Double totalFlow,
			Double totalPositiveFlow, Double totalNegativeFlow, Double dailyPositiveFlow, Double dailyNegativeFlow,
			Double dailyMaxVelocity, String dailyMaxVelocityTime, Double batteryVoltage, Byte valveStatus)
			throws ParseException {

		NbDailyData nbdailyData = new NbDailyData(nbWaterMeter.getRtuId(), nbWaterMeter.getMpId(), totalFlow,
				totalPositiveFlow, totalNegativeFlow, dailyPositiveFlow, dailyNegativeFlow, dailyMaxVelocity,
				batteryVoltage, valveStatus);
		Date reprotDate = CommFunc.parseKeTime(freezeDate);
		int ymd = toInt(formatDateByFormat(reprotDate, "yyyyMMdd"));
		nbdailyData.setYmd(ymd);
		nbdailyData.setHms(toInt(formatDateByFormat(reprotDate, "HHmmss")));
		nbdailyData.setTableName(toStr(ymd / Constant.NUM_100));		
		
		Date maxVelocityTime = CommFunc.parseKeTime(dailyMaxVelocityTime);
		nbdailyData.setDailyMaxVelocityTime(formatTimesTampDate(maxVelocityTime));

		JedisUtils.lpush(Constant.HISTORY_DAILY_QUEUE, JsonUtil.jsonObj2Sting(nbdailyData));
	}
	
	/**
	 * @throws IOException  
	*保存瞬时量数据 
	* @Title: saveInstantaneousData 
	* @param @param nbWaterMeter
	* @param @param freezeDate
	* @param @param data
	* @param @throws ParseException    设定文件 
	* @return void    返回类型 
	* @throws 
	*/
	private static void saveInstantaneousData(NbWaterMeter nbWaterMeter, String freezeDate, byte[] data)
			throws ParseException, IOException {
		Date reprotDate = CommFunc.parseKeTime(freezeDate);
		Calendar cal = Calendar.getInstance();
		cal.setTime(parseTimesTampDate(formatDateByFormat(reprotDate, "yyyyMMdd"), DATE_PATTERN));
		cal.add(Calendar.DAY_OF_YEAR, -1);

		int ymd = toInt(parseDate(cal.getTime(), DATE_PATTERN));
		NbInstantaneous nbInstantaneous = new NbInstantaneous(nbWaterMeter.getRtuId(), nbWaterMeter.getMpId(), ymd,
				toStr(ymd / Constant.NUM_100));

		List<Double> flowList = getInstantaneousData(data);
		for (int i = 0; i < flowList.size(); i++) {
			int time = toInt(formatDateByFormat(cal.getTime(), TIME_PATTERN));
			nbInstantaneous.setHms(time);
			nbInstantaneous.setTotalFlow(flowList.get(i));

			JedisUtils.lpush(Constant.HISTORY_INSTAN_QUEUE, JsonUtil.jsonObj2Sting(nbInstantaneous));
			cal.add(Calendar.MINUTE, Constant.NUM_30);
		}
	}
	
	/** 
	* 获取瞬时量数据 
	* @Title: getInstantaneousData 
	* @param @param data
	* @param @return
	* @param @throws IOException    设定文件 
	* @return List<Double>    返回类型 
	* @throws 
	*/
	private static List<Double> getInstantaneousData(byte[] data) throws IOException {
		int length = data.length / Constant.TWO;
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		List<Double> flowList = new ArrayList<Double>();
		for (int i = 0; i < length; i++) {
			byte[] data1 = new byte[Constant.TWO];
			dis.read(data1);
			double flow = getDouble(invertArray(data1)) / Constant.NUM_1000;
			flowList.add(flow);
		}
		return flowList;
	}

	/** 
	* 解析设备请求更新密钥，剩下新密钥后存入redis，然后下发直接命令下发40AF 
	* @Title: parseC0AF 
	* @param @param keMsg
	* @param @return    设定文件 
	* @return JSONObject    返回类型 
	* @throws 
	*/
	private static JSONObject parseC0AF(KeMsg keMsg) {
		/** 默认密钥 */
		String defaultKey = String.format("%016d", toLong(keMsg.getImei()));
		SM4Utils sm4 = new SM4Utils();
		sm4.secretKey = defaultKey;
		sm4.hexString = false;
		/** 解密数据域 */
		byte[] data = sm4.decryptDataECB(keMsg.getData());
		/** 解密失败 */
		if (null == data) {
			LoggerUtil.logger(LogName.ERROR).error(keMsg.getImei() + "，设备解密失败");
			return null;
		}
		
		ByteArrayInputStream bais = new ByteArrayInputStream(data);
		DataInputStream dis = new DataInputStream(bais);
		int dataLength = 0;
		try {
			/** imei码 */
			byte[] imeiBytes = new byte[Constant.EIGHT];
			dis.read(imeiBytes);
			dataLength += imeiBytes.length;
			String imei = BytesUtils.bcdToString(imeiBytes);
			/** 默认密钥 */
			byte[] keyBytes = new byte[Constant.NUM_16];
			dis.read(keyBytes);
			dataLength += keyBytes.length;
			String key = new String(keyBytes);
			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dis.read(back);
			dataLength += back.length;
			/** 校验字节 */
			byte[] crc = new byte[Constant.TWO];
			dis.read(crc);

			/** 获取待验证数据，并计算CRC值 */
			byte[] crcData = new byte[dataLength];
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
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
		JSONObject rtnJson = new JSONObject();
		rtnJson.put(Constant.CONTROL, Constant.C0AF);
		rtnJson.put(Constant.IMEI, keMsg.getImei());
		return rtnJson;
	}

	/** 
	* 组建40AF帧 响应设备请求更新密钥
	* @Title: make40AFFrame 
	* @param @param imei
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
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
	* 组建40A0帧 响应数据上报
	* @Title: make40A0Frame 
	* @param @param imei
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A0Frame(String imei) {
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
			dos.writeShort(0x40A0);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** 处理结果 */
			dataDos.write(0x00);
			/** 主站时钟 */		
			SimpleDateFormat sdf = new SimpleDateFormat("ssmmHHddMMyy");
			dataDos.write(BytesUtils.str2Bcd(sdf.format(new Date())));
			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			
			/** imei */
			dataDos.write(imeiBcd);

			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));
			
			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());
		
			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	* 响应告警立即上报
	* @Title: make40A1Frame 
	* @param @param imei
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A1Frame(String imei) {
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
			dos.writeShort(0x40A1);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** 处理结果 */
			dataDos.write(0x00);
			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));
			
			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());
		
			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	* 组建控制开关阀  
	* @Title: make40A2Frame 
	* @param @param imei
	* @param @param cmd
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A2Frame(String imei, JSONObject param) {
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		DataOutputStream dos = new DataOutputStream(bos);
		String dataFrame = null;
		imei = String.format("%016d", toLong(imei));
		byte cmd = param.getByteValue("cmd");
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
			dos.writeShort(0x40A2);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);
			/** 阀门命令 */
			dataDos.write(cmd);

 			/** 备用字节 */
			byte[] back = new byte[Constant.NINE];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));
			
			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());
		
			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}

	/** 
	* 限值设置 
	* @Title: make40A3Frame 
	* @param @param imei
	* @param @param param
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A3Frame(String imei, JSONObject param) {
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
			dos.writeShort(0x40A3);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);
			/** 大流量报警阀值 */
			byte[] data1 = invertArray(getBytes(param.getShort("largeFlowAlramThreshold")));
			dataDos.write(data1);
			/** 大流量持续时间 */
			dataDos.write(param.getByte("largeFlowAlramTime"));
			/** 小流量报警阀值 */
			byte[] data3 = invertArray(getBytes(param.getShort("smallFlowAlramThreshold")));
			dataDos.write(data3);
			/** 小流量持续时间 */
			dataDos.write(param.getByte("smallFlowAlramTime"));
			/** 长时间用水时间阀值 */
			dataDos.write(param.getByte("longTimeUsedAlramTime"));
			/** 上报基准时间 */
			SimpleDateFormat sdf = new SimpleDateFormat("ssmmHHddMMyy");
			Date reportBaseTime = parseTimesTampDate(param.getString("reportBaseTime"));
			dataDos.write(BytesUtils.str2Bcd(sdf.format(reportBaseTime)));
			/** 上报时间间隔 */
			dataDos.write(param.getByte("reportingInterval"));

			/** 电池低电压告警阀值 传整数 实际*10 */
			dataDos.write(param.getByte("lowVoltageAlarmThreshold"));
			/** 高压告警阀值 */
			dataDos.write(param.getByte("highPressureAlarmThreshold"));
			/** 低压告警阀值 */
			dataDos.write(param.getByte("lowPressureAlarmThreshold"));

			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));

			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());

			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	* 召历史数据 
	* @Title: make40A4Frame 
	* @param @param imei
	* @param @param param
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A4Frame(String imei, JSONObject param) {
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
			dos.writeShort(0x40A4);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);
			/** 开始日期 */
			dataDos.write(BytesUtils.invertArray(BytesUtils.str2Bcd(param.getString("startDate").substring(2))));
			/** 结束日期 */
			dataDos.write(BytesUtils.invertArray(BytesUtils.str2Bcd(param.getString("endDate").substring(2))));

			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));

			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());

			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	*  设置主站地址
	* @Title: make40A5Frame 
	* @param @param imei
	* @param @param param
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A5Frame(String imei, JSONObject param) {
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
			dos.writeShort(0x40A5);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);
			/** 主站ip地址 16进制字符串 10.47.18.228转为0A2F12E4 */
			dataDos.write(BytesUtils.hexStringToBytes((param.getString("ip"))));
			/** 主站端口 */
			dataDos.write(getBytes(toShort(param.getString("port"))));

			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));

			/** 使用密钥加密 */
			byte[] encryptedData = CommFunc.encryptDataECB(imei, dataBos.toByteArray());

			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) encryptedData.length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(encryptedData);

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	*  更新设备密钥
	* @Title: make40A6Frame 
	* @param @param imei
	* @param @param param
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A6Frame(String imei) {
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
			dos.writeShort(0x40A6);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);
			
			int keyNo = (int) (toLong(imei) % 10);
			/** 新密钥 */
			String secretKey = SM4.getSecretKey(keyNo, imei);
			dataDos.write(secretKey.getBytes());
			/** 母钥编号 */
			dataDos.write(toByte(keyNo)); 

			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));

			/** 使用备用密钥加密 */
			SM4Utils sm4 = new SM4Utils();
			sm4.secretKey = new StringBuilder(imei).reverse().toString();
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
	*  召母钥版本
	* @Title: make40A7Frame 
	* @param @param imei
	* @param @param param
	* @param @return    设定文件 
	* @return String    返回类型 
	* @throws 
	*/
	public static String make40A7Frame(String imei) {
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
			dos.writeShort(0x40A7);

			ByteArrayOutputStream dataBos = new ByteArrayOutputStream();
			DataOutputStream dataDos = new DataOutputStream(dataBos);
			/** Mid 帧id */
			byte[] mid = new byte[Constant.TWO];
			mid = getBytes(toShort(new Random().nextInt(Constant.NUM_1000)));
			dataDos.write(mid);

			/** 备用字节 */
			byte[] back = new byte[Constant.TEN];
			dataDos.write(back);
			/** imei */
			dataDos.write(imeiBcd);
			/** crc校验 */
			dataDos.write(hexStringToBytes(getReserveCrc(dataBos.toByteArray())));


			/** 数据长度 */
			byte[] lenght = BytesUtils.getBytes((short) dataBos.toByteArray().length);
			dos.write(BytesUtils.invertArray(lenght));
			/** 数据（加密） */
			dos.write(dataBos.toByteArray());

			dos.write(hexStringToBytes(getReserveCrc(bos.toByteArray())));
			dos.writeByte(0x16);
			dataFrame = BytesUtils.bytesToHex(bos.toByteArray());

		} catch (IOException e) {
			e.printStackTrace();
		}
		return dataFrame;
	}
	
	/** 
	*  验证消息，并返回数据部分 
	* @Title: verifyDataFrame 
	* @param @param msg
	* @param @return    设定文件 
	* @return KeMsg    返回类型 
	* @throws 
	*/
	private static KeMsg verifyDataFrame(byte[] msg) throws Exception {
		ByteArrayInputStream bais = new ByteArrayInputStream(msg);
		DataInputStream dis = new DataInputStream(bais);
		KeMsg keMsg = null;
		/** 起始字符 */
		byte frameStart = dis.readByte();
		if (frameStart != Constant.FRAME_START) {
			return null;
		}

		/** 规约类型 */
		byte protocolType = dis.readByte();
		if (protocolType != Constant.NB_TYPE) {
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
		if (end != Constant.FRAME_END) {
			return null;
		}

		keMsg = new KeMsg(msgType, imei, ctrlCode, datas);
		return keMsg;
	}
}
