package com.gotr.web.tool;

import org.apache.shiro.crypto.hash.Md5Hash;

public class MD5Hash {

	public static void main(String[] args) {
		
		String password="123";
		
		/**
		 * 1.source:明文
		 * 2.salt:盐
		 * 3.hashIterations:hash的次数
		 */
		Md5Hash md5Hash=new Md5Hash(password, "root", 3);
		System.out.println(md5Hash);
	}
	
	public static String getMd5Password(String password,String userName){
		return new Md5Hash(password,userName,3).toString();
	}
	
	
}
