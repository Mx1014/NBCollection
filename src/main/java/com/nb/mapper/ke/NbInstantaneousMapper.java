package com.nb.mapper.ke;

import org.apache.ibatis.annotations.Mapper;

import com.nb.model.ke.NbInstantaneous;

@Mapper
public interface NbInstantaneousMapper {
	boolean deleteNbInstantaneous(NbInstantaneous key);

	boolean insertNbInstantaneous(NbInstantaneous record);

	NbInstantaneous getNbInstantaneous(NbInstantaneous key);

	boolean updateNbInstantaneous(NbInstantaneous record);

}