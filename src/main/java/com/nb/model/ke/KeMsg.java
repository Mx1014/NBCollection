/**   
* @Title: KeMsg.java 
* @Package com.nb.model.ke 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月4日 上午9:45:21 
* @version V1.0   
*/
package com.nb.model.ke;

import java.io.Serializable;

/** 
* @ClassName: KeMsg 
* @Description: 科林规约消息结构
* @author dbr
* @date 2019年9月4日 上午9:45:21 
*  
*/
public class KeMsg implements Serializable{

	/** 
	* @Fields serialVersionUID : TODO(用一句话描述这个变量表示什么) 
	*/ 
	private static final long serialVersionUID = 5560813732434906738L;
	
	private Byte frameStart;
	private Byte protocolType;
	private Byte msgType;
	private String imei;
	private String ctrlCode;
	private Integer dataLength;
	private byte[] data;
	private String cs;
	private Byte frameEnd;
	private Integer mid;
	
	/** 
	* <p>Title: </p> 
	* <p>Description: </p> 
	* @param msgType
	* @param imei
	* @param ctrlCode
	* @param data 
	*/
	public KeMsg(Byte msgType, String imei, String ctrlCode, byte[] data) {
		super();
		this.msgType = msgType;
		this.imei = imei;
		this.ctrlCode = ctrlCode;
		this.data = data;
	}
	/**
	 * @return the frameStart
	 */
	public Byte getFrameStart() {
		return frameStart;
	}
	/**
	 * @param frameStart the frameStart to set
	 */
	public void setFrameStart(Byte frameStart) {
		this.frameStart = frameStart;
	}
	/**
	 * @return the protocolType
	 */
	public Byte getProtocolType() {
		return protocolType;
	}
	/**
	 * @param protocolType the protocolType to set
	 */
	public void setProtocolType(Byte protocolType) {
		this.protocolType = protocolType;
	}
	/**
	 * @return the msgType
	 */
	public Byte getMsgType() {
		return msgType;
	}
	/**
	 * @param msgType the msgType to set
	 */
	public void setMsgType(Byte msgType) {
		this.msgType = msgType;
	}
	/**
	 * @return the imei
	 */
	public String getImei() {
		return imei;
	}
	/**
	 * @param imei the imei to set
	 */
	public void setImei(String imei) {
		this.imei = imei;
	}
	/**
	 * @return the ctrlCode
	 */
	public String getCtrlCode() {
		return ctrlCode;
	}
	/**
	 * @param ctrlCode the ctrlCode to set
	 */
	public void setCtrlCode(String ctrlCode) {
		this.ctrlCode = ctrlCode;
	}
	/**
	 * @return the dataLength
	 */
	public Integer getDataLength() {
		return dataLength;
	}
	/**
	 * @param dataLength the dataLength to set
	 */
	public void setDataLength(Integer dataLength) {
		this.dataLength = dataLength;
	}
	/**
	 * @return the data
	 */
	public byte[] getData() {
		return data;
	}
	/**
	 * @param data the data to set
	 */
	public void setData(byte[] data) {
		this.data = data;
	}
	/**
	 * @return the cs
	 */
	public String getCs() {
		return cs;
	}
	/**
	 * @param cs the cs to set
	 */
	public void setCs(String cs) {
		this.cs = cs;
	}
	/**
	 * @return the frameEnd
	 */
	public Byte getFrameEnd() {
		return frameEnd;
	}
	/**
	 * @param frameEnd the frameEnd to set
	 */
	public void setFrameEnd(Byte frameEnd) {
		this.frameEnd = frameEnd;
	}
	/**
	 * @return the mid
	 */
	public Integer getMid() {
		return mid;
	}
	/**
	 * @param mid the mid to set
	 */
	public void setMid(Integer mid) {
		this.mid = mid;
	}
}
