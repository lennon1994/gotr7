package com.gotr.sso.mapper;

import java.util.Map;

import com.gotr.common.mapper.SysMapper;
import com.gotr.dubbo.pojo.User;
import com.gotr.dubbo.pojo.UserInfo;


public interface UserMapper extends SysMapper<User>{
	
	//判断用户名是否存在
	public User check(String username);

	public void saveUser(User user);

	public void saveUserInfo(UserInfo userInfo);

	public User queryByName(String username);

	//游记评论中根据评论用户ID查询用户
	public User findOne(String userId);
	
}
