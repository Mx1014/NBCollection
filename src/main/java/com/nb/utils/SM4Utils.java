/**   
* @Title: SM4Utils.java 
* @Package com.nb.utils 
* @Description: TODO(用一句话描述该文件做什么) 
* @author dbr
* @date 2019年9月2日 上午11:31:20 
* @version V1.0   
*/
package com.nb.utils;

import java.io.IOException;
import java.util.Base64;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.nb.model.SM4;
import com.nb.model.SM4Context;

/**
 * @ClassName: SM4Utils
 * @Description: SM4加密算法工具类
 * @author dbr
 * @date 2019年9月2日 上午11:31:20
 * 
 */
public class SM4Utils {
	public String secretKey = "";
	private String iv = "";
	public boolean hexString = false;

	public SM4Utils() {
	}

	/** 
	* <p>Title: </p> 
	* <p>Description: </p> 
	* @param secretKey
	* @param hexString 
	*/
	public SM4Utils(String secretKey, boolean hexString) {
		super();
		this.secretKey = secretKey;
		this.hexString = hexString;
	}



	public byte[] encryptDataECB(byte[] datas) {
		try {
			SM4Context ctx = new SM4Context();
			ctx.isPadding = true;
			ctx.mode = SM4.SM4_ENCRYPT;

			byte[] keyBytes;
			if (hexString) {
				keyBytes = BytesUtils.hexStringToBytes(secretKey);
			} else {
				keyBytes = secretKey.getBytes();
			}

			SM4 sm4 = new SM4();
			sm4.sm4_setkey_enc(ctx, keyBytes);
			byte[] encrypted = sm4.sm4_crypt_ecb(ctx, datas);
// 			String cipherText = Base64.getEncoder().encodeToString(encrypted);
//			if (cipherText != null && cipherText.trim().length() > 0) {
//				Pattern p = Pattern.compile("\\s*|\t|\r|\n");
//				Matcher m = p.matcher(cipherText);
//				cipherText = m.replaceAll("");
//			}
//			return cipherText;
			return encrypted;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public byte[] decryptDataECB(byte[] datas) {
		try {
			SM4Context ctx = new SM4Context();
			ctx.isPadding = true;
			ctx.mode = SM4.SM4_DECRYPT;

			byte[] keyBytes;
			if (hexString) {
				keyBytes = BytesUtils.hexStringToBytes(secretKey);
			} else {
				keyBytes = secretKey.getBytes();
			}

			SM4 sm4 = new SM4();
			sm4.sm4_setkey_dec(ctx, keyBytes);
			byte[] decrypted = sm4.sm4_crypt_ecb(ctx, datas);
			return decrypted;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public String encryptData_CBC(String plainText) {
		try {
			SM4Context ctx = new SM4Context();
			ctx.isPadding = true;
			ctx.mode = SM4.SM4_ENCRYPT;

			byte[] keyBytes;
			byte[] ivBytes;
			if (hexString) {
				keyBytes = BytesUtils.hexStringToBytes(secretKey);
				ivBytes = BytesUtils.hexStringToBytes(iv);
			} else {
				keyBytes = secretKey.getBytes();
				ivBytes = iv.getBytes();
			}

			SM4 sm4 = new SM4();
			sm4.sm4_setkey_enc(ctx, keyBytes);
			byte[] encrypted = sm4.sm4_crypt_cbc(ctx, ivBytes, plainText.getBytes("GBK"));
			String cipherText = Base64.getEncoder().encodeToString(encrypted);
			if (cipherText != null && cipherText.trim().length() > 0) {
				Pattern p = Pattern.compile("\\s*|\t|\r|\n");
				Matcher m = p.matcher(cipherText);
				cipherText = m.replaceAll("");
			}
			return cipherText;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public String decryptData_CBC(String cipherText) {
		try {
			SM4Context ctx = new SM4Context();
			ctx.isPadding = true;
			ctx.mode = SM4.SM4_DECRYPT;

			byte[] keyBytes;
			byte[] ivBytes;
			if (hexString) {
				keyBytes = BytesUtils.hexStringToBytes(secretKey);
				ivBytes = BytesUtils.hexStringToBytes(iv);
			} else {
				keyBytes = secretKey.getBytes();
				ivBytes = iv.getBytes();
			}

			SM4 sm4 = new SM4();
			sm4.sm4_setkey_dec(ctx, keyBytes);
			byte[] decrypted = sm4.sm4_crypt_cbc(ctx, ivBytes, Base64.getDecoder().decode(cipherText));
			return new String(decrypted, "GBK");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public static void main(String[] args) throws IOException {
		String plainText = "杜宝瑞";

		SM4Utils sm4 = new SM4Utils();
		sm4.secretKey = "_YWvc|swsLvAf";
		sm4.hexString = false;

		System.out.println("ECB模式加密");
		byte[] data = plainText.getBytes("GBK");
		data = sm4.encryptDataECB(data);
		for (byte b : data) {
			System.out.print(b + "   ");
		}
		System.out.println();
//		String cipherText = sm4.encryptDataECB(data);
		String cipherText = Base64.getEncoder().encodeToString(data);
		if (cipherText != null && cipherText.trim().length() > 0) {
			Pattern p = Pattern.compile("\\s*|\t|\r|\n");
			Matcher m = p.matcher(cipherText);
			cipherText = m.replaceAll("");
		}
		
		System.out.println("密文: " + cipherText);
		System.out.println("");

		sm4.secretKey = "_YWvc|swsLvAf";
		data= sm4.decryptDataECB(data);
		if (null == data) {
			System.out.println("解密失败");
		}
		plainText = new String(data, "GBK");
		System.out.println("明文: " + plainText);
		System.out.println("");

//		System.out.println("CBC模式加密");
//		sm4.iv = "UISwD9fW6cFh9SNS";
//		cipherText = sm4.encryptData_CBC(plainText);
//		System.out.println("密文: " + cipherText);
//		System.out.println("");
//
//		plainText = sm4.decryptData_CBC(cipherText);
//		System.out.println("明文: " + plainText);
//
//		System.out.println("CBC模式解密");
//		System.out.println("密文：4esGgDn/snKraRDe6uM0jQ==");
//		String cipherText2 = "4esGgDn/snKraRDe6uM0jQ==";
//		plainText = sm4.decryptData_CBC(cipherText2);
//		System.out.println("明文: " + plainText);
	}
}
