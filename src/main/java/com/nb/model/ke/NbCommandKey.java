package com.nb.model.ke;

import java.util.Date;

public class NbCommandKey {
    private Integer rtuId;

    private Short mpId;

    private Date sendTime;

    private Byte commandType;

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
}