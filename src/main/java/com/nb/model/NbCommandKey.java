package com.nb.model;

import java.io.Serializable;
import java.util.Date;

/** 
* @ClassName: NbCommandKey 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年4月18日 下午4:36:08 
*  
*/
public class NbCommandKey implements Serializable{
    /** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 1L;

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