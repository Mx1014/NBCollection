package com.nb.model.ke;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class NbDailyData implements Serializable {
	  
	private static final long serialVersionUID = 3983469343600931028L;

	private Integer rtuId;

	private Short mpId;

	private Integer ymd;

	private Integer hms;

	private BigDecimal totalFlow;

	private BigDecimal totalPositiveFlow;

	private BigDecimal totalNegativeFlow;

	private BigDecimal dailyPositiveFlow;

	private BigDecimal dailyNegativeFlow;

	private BigDecimal dailyMaxVelocity;

	private Date dailyMaxVelocityTime;

	private BigDecimal batteryVoltage;

	private Byte valveStatus;
	
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

	public BigDecimal getTotalFlow() {
		return totalFlow;
	}

	public void setTotalFlow(BigDecimal totalFlow) {
		this.totalFlow = totalFlow;
	}

	public BigDecimal getTotalPositiveFlow() {
		return totalPositiveFlow;
	}

	public void setTotalPositiveFlow(BigDecimal totalPositiveFlow) {
		this.totalPositiveFlow = totalPositiveFlow;
	}

	public BigDecimal getTotalNegativeFlow() {
		return totalNegativeFlow;
	}

	public void setTotalNegativeFlow(BigDecimal totalNegativeFlow) {
		this.totalNegativeFlow = totalNegativeFlow;
	}

	public BigDecimal getDailyPositiveFlow() {
		return dailyPositiveFlow;
	}

	public void setDailyPositiveFlow(BigDecimal dailyPositiveFlow) {
		this.dailyPositiveFlow = dailyPositiveFlow;
	}

	public BigDecimal getDailyNegativeFlow() {
		return dailyNegativeFlow;
	}

	public void setDailyNegativeFlow(BigDecimal dailyNegativeFlow) {
		this.dailyNegativeFlow = dailyNegativeFlow;
	}

	public BigDecimal getDailyMaxVelocity() {
		return dailyMaxVelocity;
	}

	public void setDailyMaxVelocity(BigDecimal dailyMaxVelocity) {
		this.dailyMaxVelocity = dailyMaxVelocity;
	}

	public Date getDailyMaxVelocityTime() {
		return dailyMaxVelocityTime;
	}

	public void setDailyMaxVelocityTime(Date dailyMaxVelocityTime) {
		this.dailyMaxVelocityTime = dailyMaxVelocityTime;
	}

	public BigDecimal getBatteryVoltage() {
		return batteryVoltage;
	}

	public void setBatteryVoltage(BigDecimal batteryVoltage) {
		this.batteryVoltage = batteryVoltage;
	}

	public Byte getValveStatus() {
		return valveStatus;
	}

	public void setValveStatus(Byte valveStatus) {
		this.valveStatus = valveStatus;
	}
}