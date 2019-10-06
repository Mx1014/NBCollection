/**   
* @Title: ChinaMobileKeServiceImpl.java 
* @Package com.nb.service.chinamobileimpl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月2日 上午10:41:06 
* @version V1.0   
*/
package com.nb.service.chinamobileimpl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.nb.mapper.ke.NbWaterMeterMapper;
import com.nb.model.ke.NbWaterMeter;
import com.nb.protocolutil.KeProtocolUtil;
import com.nb.service.IChinaMobileCommandService;
import com.nb.service.IChinaMobileService;
import com.nb.utils.BytesUtils;
import com.nb.utils.Constant;
import com.nb.utils.ConverterUtils;

/** 
* @ClassName: ChinaMobileKeServiceImpl 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年9月2日 上午10:41:06 
*  
*/
@Service
public class ChinaMobileKeServiceImpl implements IChinaMobileService {

	@Autowired
	private IChinaMobileCommandService chinaMobileCommandService;
	
	@Resource
	private NbWaterMeterMapper nbWaterMeterMapper;
	/** (非 Javadoc) 
	* <p>Title: parseDataPointMsg</p> 
	* <p>Description: </p> 
	* @param msgJson
	* @throws Exception 
	* @see com.nb.service.IChinaMobileService#parseDataPointMsg(com.alibaba.fastjson.JSONObject) 
	*/
	@Override
	public void parseDataPointMsg(JSONObject msgJson) throws Exception {
		byte[] dataFrame = BytesUtils.hexStringToBytes(msgJson.getString("value"));
		/** 解析上报数据帧 */
		JSONObject resultJson = KeProtocolUtil.parseDataFrame(dataFrame);
		if (resultJson == null) {
			return;
		}
		
		String control = resultJson.getString(Constant.CONTROL);
		String imei = ConverterUtils.toStr(ConverterUtils.toLong(resultJson.getString(Constant.IMEI)));
		String cmdFrame = null;
		switch (control) {
		case Constant.C0AF:
			cmdFrame = KeProtocolUtil.make40AFFrame(imei);
			break;
		case Constant.C0A0:
			cmdFrame = KeProtocolUtil.make40A0Frame(imei);
			break;
		case Constant.C0A1:
			cmdFrame = KeProtocolUtil.make40A1Frame(imei);
			break;
		default:
			break;
		}
		if (cmdFrame == null) {
			return;
		}
		NbWaterMeter nbWaterMeter = nbWaterMeterMapper.getNbWaterMeter(imei);
		if (nbWaterMeter == null) {
			return;
		}
		JSONObject param = new JSONObject();
		param.put("rtuId", nbWaterMeter.getRtuId());
		param.put("mpId", nbWaterMeter.getMpId());
		param.put("commandId", Constant.ONE);
		param.put("commandData", cmdFrame);
		
  		chinaMobileCommandService.instantCommand(param);
	}

	/** (非 Javadoc) 
	* <p>Title: parseCommandMsg</p> 
	* <p>Description: </p> 
	* @param msgJson
	* @throws Exception 
	* @see com.nb.service.IChinaMobileService#parseCommandMsg(com.alibaba.fastjson.JSONObject) 
	*/
	@Override
	public void parseCommandMsg(JSONObject msgJson) throws Exception {
		// TODO Auto-generated method stub

	}

}
