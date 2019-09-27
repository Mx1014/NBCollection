package com.nb.model.ke;

import java.util.Date;

public class NbCommand extends NbCommandKey {
    private Byte commandClass;

    private String commandId;

    private Byte executeResult;

    private Date reportTime;

    private Integer operatorId;

    private String commandContent;

    public Byte getCommandClass() {
        return commandClass;
    }

    public void setCommandClass(Byte commandClass) {
        this.commandClass = commandClass;
    }

    public String getCommandId() {
        return commandId;
    }

    public void setCommandId(String commandId) {
        this.commandId = commandId == null ? null : commandId.trim();
    }

    public Byte getExecuteResult() {
        return executeResult;
    }

    public void setExecuteResult(Byte executeResult) {
        this.executeResult = executeResult;
    }

    public Date getReportTime() {
        return reportTime;
    }

    public void setReportTime(Date reportTime) {
        this.reportTime = reportTime;
    }

    public Integer getOperatorId() {
        return operatorId;
    }

    public void setOperatorId(Integer operatorId) {
        this.operatorId = operatorId;
    }

    public String getCommandContent() {
        return commandContent;
    }

    public void setCommandContent(String commandContent) {
        this.commandContent = commandContent == null ? null : commandContent.trim();
    }
}