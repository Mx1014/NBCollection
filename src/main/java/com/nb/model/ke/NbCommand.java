package com.nb.model.ke;

import java.io.Serializable;
import java.util.Date;

public class NbCommand implements Serializable {
	private static final long serialVersionUID = -664716592362005541L;

	private Integer rtuId;

	private Short mpId;

	private Date sendTime;

	private Byte commandType;
	private Byte commandClass;

	private String commandId;

	private Byte executeResult;

	private Date reportTime;

	private Integer operatorId;

	private String commandContent;
	
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
		this.tableName = "yddata.dbo.nb_command_" + tableName;
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

	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public Byte getCommandType() {
		return commandType;
	}

	public void setCommandType(Byte commandType) {
		this.commandType = commandType;
	}

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