package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbDailyData;

@Mapper
public interface NbDailyDataMapper {
	boolean deleteNbDailyData(NbDailyData key);

	boolean insertNbDailyData(NbDailyData record);

	NbDailyData getNbDailyData(NbDailyData key);

	boolean updateNbDailyData(NbDailyData record);
	
	/** 
	* @Title: isExist 
	* @Description: 判断日数据是否存在
	* @param @param nbDailyData
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	boolean isExist(NbDailyData nbDailyData);
}