/**   
* @Title: KeChinatelecomData.java 
* @Package com.nb.servicestrategy.ke 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年10月14日 上午11:02:53 
* @version V1.0   
*/
package com.nb.servicestrategy.ke;

import java.util.Map;

import org.springframework.stereotype.Service;

import com.nb.servicestrategy.IServiceStrategy;

/** 
* @ClassName: KeChinatelecomData 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年10月14日 上午11:02:53 
*  
*/
@Service
public class KeChinatelecomData implements IServiceStrategy {

	/** (非 Javadoc) 
	* <p>Title: parse</p> 
	* <p>Description: </p> 
	* @param deviceId
	* @param serviceMap 
	* @see com.nb.servicestrategy.IServiceStrategy#parse(java.lang.String, java.util.Map) 
	*/
	@Override
	public void parse(String deviceId, Map<String, String> serviceMap) {
		// TODO Auto-generated method stub

	}

}
