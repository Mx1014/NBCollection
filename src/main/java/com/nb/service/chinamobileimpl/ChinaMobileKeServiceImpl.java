/**   
* @Title: ChinaMobileKeServiceImpl.java 
* @Package com.nb.service.chinamobileimpl 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月2日 上午10:41:06 
* @version V1.0   
*/
package com.nb.service.chinamobileimpl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.nb.protocolutil.KeProtocolUtil;
import com.nb.service.IChinaMobileService;
import com.nb.utils.BytesUtils;

/** 
* @ClassName: ChinaMobileKeServiceImpl 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年9月2日 上午10:41:06 
*  
*/
public class ChinaMobileKeServiceImpl implements IChinaMobileService {

	/** (非 Javadoc) 
	* <p>Title: parseDataPointMsg</p> 
	* <p>Description: </p> 
	* @param msgJson
	* @throws Exception 
	* @see com.nb.service.IChinaMobileService#parseDataPointMsg(com.alibaba.fastjson.JSONObject) 
	*/
	@Override
	public void parseDataPointMsg(JSONObject msgJson) throws Exception {
		// TODO Auto-generated method stub
		byte[] dataFrame = BytesUtils.hexStringToBytes(msgJson.getString("value"));
		
		KeProtocolUtil.parseDataFrame(dataFrame);
// 		chinaMobileCommandService.instantCommand(JSONObject.parseObject(JSON.toJSONString(meterInfo)));


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
