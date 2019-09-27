package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.JFDayFlow;

/** 
* @ClassName: JFDayFlowMapper 
* @Description: 流量计日数据数据库操作类
* @author dbr
* @date 2019�?4�?18�? 下午4:34:29 
*  
*/
@Mapper
public interface JFDayFlowMapper {

    /** 
    * @Title: insertJFDayFlow 
    * @Description: 插入流量计日数据
    * @param @param record
    * @param @return    设定文件 
    * @return boolean    返回类型 
    * @throws 
    */
    boolean insertJFDayFlow(JFDayFlow record);
    
	/** 
	* @Title: updateJFDayFlow 
	* @Description: 更新表底 
	* @param @param record
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	boolean updateJFDayFlow(JFDayFlow record);    
    
    /** 
	* @Title: isExist 
	* @Description: 判断日数据是否存�?
	* @param @param nbDailyData
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	boolean isExist(JFDayFlow jfDayFlow);
    
    
}