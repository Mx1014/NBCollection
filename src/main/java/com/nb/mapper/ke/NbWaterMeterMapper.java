package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbWaterMeter;

@Mapper
public interface NbWaterMeterMapper {

	NbWaterMeter getNbWaterMeter(String imei);
	
	boolean isExistImei(String imei);

	boolean updateNbWaterMeter(NbWaterMeter record);

}