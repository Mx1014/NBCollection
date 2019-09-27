package com.nb.mapper.ke;

import com.nb.model.ke.NbInstantaneous;
import com.nb.model.ke.NbInstantaneousKey;

public interface NbInstantaneousMapper {
    int deleteByPrimaryKey(NbInstantaneousKey key);

    int insert(NbInstantaneous record);

    int insertSelective(NbInstantaneous record);

    NbInstantaneous selectByPrimaryKey(NbInstantaneousKey key);

    int updateByPrimaryKeySelective(NbInstantaneous record);

    int updateByPrimaryKey(NbInstantaneous record);
}