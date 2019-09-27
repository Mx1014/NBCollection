package com.nb.mapper.ke;

import com.nb.model.ke.NbDailyData;
import com.nb.model.ke.NbDailyDataKey;

public interface NbDailyDataMapper {
    int deleteByPrimaryKey(NbDailyDataKey key);

    int insert(NbDailyData record);

    int insertSelective(NbDailyData record);

    NbDailyData selectByPrimaryKey(NbDailyDataKey key);

    int updateByPrimaryKeySelective(NbDailyData record);

    int updateByPrimaryKey(NbDailyData record);
}