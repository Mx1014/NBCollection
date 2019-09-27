package com.nb.mapper.ke;

import com.nb.model.ke.NbCommand;
import com.nb.model.ke.NbCommandKey;

public interface NbCommandMapper {
    int deleteByPrimaryKey(NbCommandKey key);

    int insert(NbCommand record);

    int insertSelective(NbCommand record);

    NbCommand selectByPrimaryKey(NbCommandKey key);

    int updateByPrimaryKeySelective(NbCommand record);

    int updateByPrimaryKeyWithBLOBs(NbCommand record);

    int updateByPrimaryKey(NbCommand record);
}