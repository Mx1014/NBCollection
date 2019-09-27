package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbCommand;

@Mapper
public interface NbCommandMapper {
	boolean deleteNbCommand(NbCommand key);

	boolean insertNbCommand(NbCommand record);

	NbCommand getNbCommand(NbCommand key);

	boolean updateNbCommand(NbCommand record);

}