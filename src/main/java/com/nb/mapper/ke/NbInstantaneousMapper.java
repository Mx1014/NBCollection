package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbInstantaneous;

@Mapper
public interface NbInstantaneousMapper {
	boolean deleteNbInstantaneous(NbInstantaneous key);

	boolean insertNbInstantaneous(NbInstantaneous record);

	NbInstantaneous getNbInstantaneous(NbInstantaneous key);

	boolean updateNbInstantaneous(NbInstantaneous record);

	/** 
	* @Title: isExist 
	* @Description: 判断瞬时量是否存在 
	* @param @param key
	* @param @return    设定文件 
	* @return boolean    返回类型 
	* @throws 
	*/
	boolean isExist(NbInstantaneous key);
}