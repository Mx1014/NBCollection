/**   
* @Title: HistoryDatabaseExecutor.java 
* @Package com.nb.customer.historydatabase 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年3月11日 上午9:57:08 
* @version V1.0   
*/
package com.nb.customer.historydatabase;

import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.nb.logger.LogName;
import com.nb.logger.LoggerUtil;
import com.nb.mapper.ke.JFDayFlowMapper;
 import com.nb.mapper.ke.NbDailyDataMapper;
import com.nb.mapper.ke.NbInstantaneousMapper;
import com.nb.model.ke.JFDayFlow;
 import com.nb.model.ke.NbDailyData;
import com.nb.model.ke.NbInstantaneous;
import com.nb.utils.Constant;
import com.nb.utils.ConverterUtils;
import com.nb.utils.JedisUtils;
import com.nb.utils.JsonUtil;

/**
 * @ClassName: HistoryDatabaseExecutor
 * @Description: 历史库存储执行类
 * @author dbr
 * @date 2019年3月11日 上午9:57:08
 * 
 */
@Component
public class HistoryDatabaseExecutor {

	@Resource
	private NbDailyDataMapper nbDailyDataMapper;
	
	@Resource
	private JFDayFlowMapper jfDayFlowMapper;

	@Resource
	private NbInstantaneousMapper nbInstantaneousMapper;

	/** 
	* @Title: saveDailyData 
	* @Description: 数据库持久化水表日数据 
	* @param @param obj
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	public boolean saveDailyData(Object obj) {
		boolean flag = true;
		try {
			NbDailyData nbDailyData = JsonUtil.convertJsonStringToObject(obj.toString(), NbDailyData.class);

			if (!nbDailyDataMapper.isExist(nbDailyData)) {
				flag = nbDailyDataMapper.insertNbDailyData(nbDailyData);
			} else {
				flag = nbDailyDataMapper.updateNbDailyData(nbDailyData);
			}
//			if (nbDailyData.getTotalFlow() != null) {
				flag &= insertJFDayFlow(nbDailyData);
//			}

		} catch (Exception e) {
			flag = false;
			JedisUtils.lpush(Constant.HISTORY_DAILY_ERROR_QUEUE, JsonUtil.jsonObj2Sting(obj));
			e.printStackTrace();
			LoggerUtil.logger(LogName.HISTORYDATA).error(obj.toString() + "存库失败," + e.getMessage());
		}
		return flag;
	}
	
	/** 
	* @Title: insertJFDayFlow 
	* @Description: 插入流量计日流量数据表
	* @param @param nbDailyData
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	public boolean insertJFDayFlow(NbDailyData nbDailyData) throws Exception {
		JFDayFlow jfDayFlow = new JFDayFlow();
		jfDayFlow.setTableName(ConverterUtils.toStr(nbDailyData.getYmd() / 100));
		jfDayFlow.setRtuId(nbDailyData.getRtuId());
		jfDayFlow.setMpId(nbDailyData.getMpId());
		jfDayFlow.setDate(nbDailyData.getYmd());

		jfDayFlow.setTime(nbDailyData.getHms());
		jfDayFlow.setLjllZx(nbDailyData.getTotalFlow());
		jfDayFlow.setLlLjllZx(nbDailyData.getDailyPositiveFlow());
		jfDayFlow.setLlLjllFx(nbDailyData.getDailyNegativeFlow());
		boolean flag = false;
		if (!jfDayFlowMapper.isExist(jfDayFlow)) {
			flag = jfDayFlowMapper.insertJFDayFlow(jfDayFlow);
		} else {
			flag = jfDayFlowMapper.updateJFDayFlow(jfDayFlow);
		}
		return flag;
	}
	
	/** 
	* @Title: saveInstanceData 
	* @Description: 数据库持久化瞬时量 
	* @param @param obj
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	public boolean saveInstanceData(Object obj) {
		boolean flag = true;
		try {
			NbInstantaneous nbInstantaneous = JsonUtil.convertJsonStringToObject(obj.toString(), NbInstantaneous.class);
			if (nbInstantaneousMapper.isExist(nbInstantaneous)) {
				flag = nbInstantaneousMapper.updateNbInstantaneous(nbInstantaneous);
			} else {
				flag = nbInstantaneousMapper.insertNbInstantaneous(nbInstantaneous);
			}
		} catch (Exception e) {
			flag = false;
			JedisUtils.lpush(Constant.HISTORY_INSTAN_ERROR_QUEUE, JsonUtil.jsonObj2Sting(obj));
			LoggerUtil.logger(LogName.CALLBACK).info(obj.toString() + "存库失败");
		}
		return flag;
	}

}
