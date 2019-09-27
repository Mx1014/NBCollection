package com.nb.model.ke;

import java.io.Serializable;

public class NbInstantaneous implements Serializable {
	private static final long serialVersionUID = -4718893979868663428L;

	private Integer rtuId;

	private Short mpId;

	private Integer ymd;

	private Integer hms;
	private Double totalFlow;
	private String tableName;
	
	/** 
	* <p>Title: </p> 
	* <p>Description: </p> 
	* @param rtuId
	* @param mpId
	* @param ymd
	* @param tableName 
	*/
	public NbInstantaneous(Integer rtuId, Short mpId, Integer ymd, String tableName) {
		super();
		this.rtuId = rtuId;
		this.mpId = mpId;
		this.ymd = ymd;
		this.tableName = "yddata.dbo.nb_instantaneous_" + tableName;
	}

	/**
	 * @return the tableName
	 */
	public String getTableName() {
		return tableName;
	}

	/**
	 * @param tableName the tableName to set
	 */
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public Integer getRtuId() {
		return rtuId;
	}

	public void setRtuId(Integer rtuId) {
		this.rtuId = rtuId;
	}

	public Short getMpId() {
		return mpId;
	}

	public void setMpId(Short mpId) {
		this.mpId = mpId;
	}

	public Integer getYmd() {
		return ymd;
	}

	public void setYmd(Integer ymd) {
		this.ymd = ymd;
	}

	public Integer getHms() {
		return hms;
	}

	public void setHms(Integer hms) {
		this.hms = hms;
	}

	public Double getTotalFlow() {
		return totalFlow;
	}

	public void setTotalFlow(Double totalFlow) {
		this.totalFlow = totalFlow;
	}
}