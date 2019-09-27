package com.nb.mapper.ke;

import com.nb.model.ke.NbWaterMeter;
import com.nb.model.ke.NbWaterMeterKey;

public interface NbWaterMeterMapper {
    int deleteByPrimaryKey(NbWaterMeterKey key);

    int insert(NbWaterMeter record);

    int insertSelective(NbWaterMeter record);

    NbWaterMeter selectByPrimaryKey(NbWaterMeterKey key);

    int updateByPrimaryKeySelective(NbWaterMeter record);

    int updateByPrimaryKey(NbWaterMeter record);
}