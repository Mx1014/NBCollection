package com.nb.model.ke;

import java.io.Serializable;

public class NbDailyData implements Serializable {
	  
	private static final long serialVersionUID = 3983469343600931028L;

	private Integer rtuId;

	private Short mpId;

	private Integer ymd;

	private Integer hms;

	private Double totalFlow;

	private Double totalPositiveFlow;

	private Double totalNegativeFlow;

	private Double dailyPositiveFlow;

	private Double dailyNegativeFlow;

	private Double dailyMaxVelocity;

	private String dailyMaxVelocityTime;

	private Double batteryVoltage;

	private Byte valveStatus;
	
	private String tableName;
	 /** 
	* <p>Title: </p> 
	* <p>Description: </p> 
	* @param rtuId
	* @param mpId
	* @param totalFlow
	* @param totalPositiveFlow
	* @param totalNegativeFlow
	* @param dailyPositiveFlow
	* @param dailyNegativeFlow
	* @param dailyMaxVelocity
	* @param batteryVoltage
	* @param valveStatus 
	*/
	public NbDailyData(Integer rtuId, Short mpId, Double totalFlow, Double totalPositiveFlow, Double totalNegativeFlow,
			Double dailyPositiveFlow, Double dailyNegativeFlow, Double dailyMaxVelocity, Double batteryVoltage,
			Byte valveStatus) {
		super();
		this.rtuId = rtuId;
		this.mpId = mpId;
		this.totalFlow = totalFlow;
		this.totalPositiveFlow = totalPositiveFlow;
		this.totalNegativeFlow = totalNegativeFlow;
		this.dailyPositiveFlow = dailyPositiveFlow;
		this.dailyNegativeFlow = dailyNegativeFlow;
		this.dailyMaxVelocity = dailyMaxVelocity;
 		this.batteryVoltage = batteryVoltage;
		this.valveStatus = valveStatus;
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
		this.tableName = "yddata.dbo.nb_daily_data_" + tableName;
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

	public Double getTotalPositiveFlow() {
		return totalPositiveFlow;
	}

	public void setTotalPositiveFlow(Double totalPositiveFlow) {
		this.totalPositiveFlow = totalPositiveFlow;
	}

	public Double getTotalNegativeFlow() {
		return totalNegativeFlow;
	}

	public void setTotalNegativeFlow(Double totalNegativeFlow) {
		this.totalNegativeFlow = totalNegativeFlow;
	}

	public Double getDailyPositiveFlow() {
		return dailyPositiveFlow;
	}

	public void setDailyPositiveFlow(Double dailyPositiveFlow) {
		this.dailyPositiveFlow = dailyPositiveFlow;
	}

	public Double getDailyNegativeFlow() {
		return dailyNegativeFlow;
	}

	public void setDailyNegativeFlow(Double dailyNegativeFlow) {
		this.dailyNegativeFlow = dailyNegativeFlow;
	}

	public Double getDailyMaxVelocity() {
		return dailyMaxVelocity;
	}

	public void setDailyMaxVelocity(Double dailyMaxVelocity) {
		this.dailyMaxVelocity = dailyMaxVelocity;
	}

	public String getDailyMaxVelocityTime() {
		return dailyMaxVelocityTime;
	}

	public void setDailyMaxVelocityTime(String dailyMaxVelocityTime) {
		this.dailyMaxVelocityTime = dailyMaxVelocityTime;
	}

	public Double getBatteryVoltage() {
		return batteryVoltage;
	}

	public void setBatteryVoltage(Double batteryVoltage) {
		this.batteryVoltage = batteryVoltage;
	}

	public Byte getValveStatus() {
		return valveStatus;
	}

	public void setValveStatus(Byte valveStatus) {
		this.valveStatus = valveStatus;
	}
}