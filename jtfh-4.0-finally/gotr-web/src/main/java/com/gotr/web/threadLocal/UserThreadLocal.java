package com.gotr.web.threadLocal;

import com.gotr.dubbo.pojo.User;

public class UserThreadLocal {
	private static final ThreadLocal<User> USER=new ThreadLocal<User>();
	
	public static void set(User user){
		USER.set(user);
	}
	public static User get(){
		return USER.get();
	}
	public static String getUserId(){
		try{
			return USER.get().getUserId();
		}catch(Exception e){
			return null;
		}
	}
}
