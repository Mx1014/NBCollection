package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbDailyData;

@Mapper
public interface NbDailyDataMapper {
	boolean deleteNbDailyData(NbDailyData key);

	boolean insertNbDailyData(NbDailyData record);

	NbDailyData getNbDailyData(NbDailyData key);

	boolean updateNbDailyData(NbDailyData record);
}