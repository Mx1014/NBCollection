package com.nb.model.ke;

import java.io.Serializable;
import java.math.BigDecimal;

public class NbInstantaneous implements Serializable {
	private static final long serialVersionUID = -4718893979868663428L;

	private Integer rtuId;

	private Short mpId;

	private Integer ymd;

	private Integer hms;
	private BigDecimal totalFlow;
	private String tableName;
	
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

	public BigDecimal getTotalFlow() {
		return totalFlow;
	}

	public void setTotalFlow(BigDecimal totalFlow) {
		this.totalFlow = totalFlow;
	}
}