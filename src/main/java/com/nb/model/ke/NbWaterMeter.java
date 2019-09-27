package com.nb.model.ke;

import java.util.Date;

public class NbWaterMeter extends NbWaterMeterKey {
    private Integer appinfoId;

    private Integer deviceModelId;

    private String defaultKey;

    private String backupKey;

    private Integer keyNo;

    private String meterNumber;

    private Integer meterCaliber;

    private String imeiCode;

    private String imsiCode;

    private String deviceId;

    private Double lowVoltageThreshold;

    private Double lowPressureThreshold;

    private Double highPressureThreshold;

    private Double highVoltageThreshold;

    private Double largeFlowThreshold;

    private Integer largeFlowDuration;

    private Integer longTimeWaterUseThreshold;

    private Double smallFlowThreshold;

    private Integer smallFlowDuration;

    private String reportBaseTime;

    private Integer reportIntervalTime;

    private Byte valveStatus;

    private String firmwareVersion;

    
    public Integer getAppinfoId() {
        return appinfoId;
    }

    public void setAppinfoId(Integer appinfoId) {
        this.appinfoId = appinfoId;
    }

    public Integer getDeviceModelId() {
        return deviceModelId;
    }

    public void setDeviceModelId(Integer deviceModelId) {
        this.deviceModelId = deviceModelId;
    }

    public String getDefaultKey() {
        return defaultKey;
    }

    public void setDefaultKey(String defaultKey) {
        this.defaultKey = defaultKey == null ? null : defaultKey.trim();
    }

    public String getBackupKey() {
        return backupKey;
    }

    public void setBackupKey(String backupKey) {
        this.backupKey = backupKey == null ? null : backupKey.trim();
    }

    public Integer getKeyNo() {
        return keyNo;
    }

    public void setKeyNo(Integer keyNo) {
        this.keyNo = keyNo;
    }

    public String getMeterNumber() {
        return meterNumber;
    }

    public void setMeterNumber(String meterNumber) {
        this.meterNumber = meterNumber == null ? null : meterNumber.trim();
    }

    public Integer getMeterCaliber() {
        return meterCaliber;
    }

    public void setMeterCaliber(Integer meterCaliber) {
        this.meterCaliber = meterCaliber;
    }

    public String getImeiCode() {
        return imeiCode;
    }

    public void setImeiCode(String imeiCode) {
        this.imeiCode = imeiCode == null ? null : imeiCode.trim();
    }

    public String getImsiCode() {
        return imsiCode;
    }

    public void setImsiCode(String imsiCode) {
        this.imsiCode = imsiCode == null ? null : imsiCode.trim();
    }

    public String getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(String deviceId) {
        this.deviceId = deviceId == null ? null : deviceId.trim();
    }

    public Double getLowVoltageThreshold() {
        return lowVoltageThreshold;
    }

    public void setLowVoltageThreshold(Double lowVoltageThreshold) {
        this.lowVoltageThreshold = lowVoltageThreshold;
    }

    public Double getLowPressureThreshold() {
        return lowPressureThreshold;
    }

    public void setLowPressureThreshold(Double lowPressureThreshold) {
        this.lowPressureThreshold = lowPressureThreshold;
    }

    public Double getHighPressureThreshold() {
        return highPressureThreshold;
    }

    public void setHighPressureThreshold(Double highPressureThreshold) {
        this.highPressureThreshold = highPressureThreshold;
    }

    public Double getHighVoltageThreshold() {
        return highVoltageThreshold;
    }

    public void setHighVoltageThreshold(Double highVoltageThreshold) {
        this.highVoltageThreshold = highVoltageThreshold;
    }

    public Double getLargeFlowThreshold() {
        return largeFlowThreshold;
    }

    public void setLargeFlowThreshold(Double largeFlowThreshold) {
        this.largeFlowThreshold = largeFlowThreshold;
    }

    public Integer getLargeFlowDuration() {
        return largeFlowDuration;
    }

    public void setLargeFlowDuration(Integer largeFlowDuration) {
        this.largeFlowDuration = largeFlowDuration;
    }

    public Integer getLongTimeWaterUseThreshold() {
        return longTimeWaterUseThreshold;
    }

    public void setLongTimeWaterUseThreshold(Integer longTimeWaterUseThreshold) {
        this.longTimeWaterUseThreshold = longTimeWaterUseThreshold;
    }

    public Double getSmallFlowThreshold() {
        return smallFlowThreshold;
    }

    public void setSmallFlowThreshold(Double smallFlowThreshold) {
        this.smallFlowThreshold = smallFlowThreshold;
    }

    public Integer getSmallFlowDuration() {
        return smallFlowDuration;
    }

    public void setSmallFlowDuration(Integer smallFlowDuration) {
        this.smallFlowDuration = smallFlowDuration;
    }

    public String getReportBaseTime() {
        return reportBaseTime;
    }

    public void setReportBaseTime(String reportBaseTime) {
        this.reportBaseTime = reportBaseTime;
    }

    public Integer getReportIntervalTime() {
        return reportIntervalTime;
    }

    public void setReportIntervalTime(Integer reportIntervalTime) {
        this.reportIntervalTime = reportIntervalTime;
    }

    public Byte getValveStatus() {
        return valveStatus;
    }

    public void setValveStatus(Byte valveStatus) {
        this.valveStatus = valveStatus;
    }

    public String getFirmwareVersion() {
        return firmwareVersion;
    }

    public void setFirmwareVersion(String firmwareVersion) {
        this.firmwareVersion = firmwareVersion == null ? null : firmwareVersion.trim();
    }
}