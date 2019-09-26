/**   
* @Title: SM4Context.java 
* @Package com.nb.model 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月2日 上午11:28:01 
* @version V1.0   
*/
package com.nb.model;

/** 
* @ClassName: SM4Context 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author dbr
* @date 2019年9月2日 上午11:28:01 
*  
*/
public class SM4Context {
	public int mode;

	public long[] sk;

	public boolean isPadding;

	public SM4Context() {
		this.mode = 1;
		this.isPadding = true;
		this.sk = new long[32];
	}

}
