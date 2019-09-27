package com.nb.model.ke;

import java.math.BigDecimal;
import java.util.Date;

public class NbDailyData extends NbDailyDataKey {
    private BigDecimal totalFlow;

    private BigDecimal totalPositiveFlow;

    private BigDecimal totalNegativeFlow;

    private BigDecimal dailyPositiveFlow;

    private BigDecimal dailyNegativeFlow;

    private BigDecimal dailyMaxVelocity;

    private Date dailyMaxVelocityTime;

    private BigDecimal batteryVoltage;

    private Byte valveStatus;

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