package com.gotr.sso.dubbo;

import java.util.Date;
import java.util.UUID;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gotr.common.service.RedisService;
import com.gotr.dubbo.pojo.User;
import com.gotr.dubbo.pojo.UserInfo;
import com.gotr.dubbo.sso.DubboUserService;
import com.gotr.sso.mapper.UserMapper;
import com.gotr.sso.service.BaseService;
import redis.clients.jedis.JedisCluster;

//把业务的service封装
public class DubboUserServiceImpl extends BaseService<User>implements DubboUserService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RedisService redisService;
	@Autowired
	private JedisCluster jedisCluster;
	private static final ObjectMapper MAPPER = new ObjectMapper();

	
	
	public Boolean check(String username) {
		if (null == userMapper.check(username)) {
			return true;
		}
		return false;// 用户不存在
	}

	public String login(String username, String password) {
		// 1）用户填写用户名和密码（明码）提交
		// 2）按用户名进行查询，获取用户。没查询到，获取不到值，返回null。如果查询到，拿返回的user对象的密码（加密后）和页面用户提交（明码）按相同加密算法加密，进行比较。
		// 3）如果密码相同，生成ticket；如果密码不同，返回null
		// 4）ticket有要求：TICKET_唯一性（username），动态性（时间戳，毫秒数），混淆性（md5）
		// 5）写redis，k（ticket）v（ObjectMapepr（user）=userJson）
		// 6）写cookie，错，cookie特性跟着域名sso.jt.com
		// ，读www.jt.com。必须在前台系统中写cookie。k（JT_TICKET写死）v（ticket）
		// 两关增加安全性：a.过期（1天）b.二次校验（短信验证）

		// User user=new User();
		// user.setUsername(username);
		User curUser = userMapper.queryByName(username);

		String password1 = curUser.getPassword();

		String ticket = null;
		if (password1 != null) {
			String newPassword = DigestUtils.md5Hex(password);
			if (newPassword.equals(password1)) {
				ticket = DigestUtils.md5Hex("TICKET_" + username + System.currentTimeMillis());
				// 写redis缓存
				try {
					// curUser.setPassword(null);
					curUser.setUsername(username);

					String userjson = MAPPER.writeValueAsString(curUser);

					// redisService.set(ticket, userjson,60*60*24);
					jedisCluster.set(ticket, userjson);// 没有设到期时间
				} catch (JsonProcessingException e) {
					e.printStackTrace();
				}
			}
		}
		return ticket;

	}

	// 根据ticket获取userjson信息，然后转化成对象，返回前台
	public User queryByTicket(String ticket) {

		String jsondata = null;

		User user = new User();
		try {
			jsondata = jedisCluster.get(ticket);
			user = MAPPER.readValue(jsondata, User.class);
		} catch (Exception e) {

			return user;// 有异常不处理
		}

		return user;
	}

	public void register(String username, String password, Integer age, String email, String telephone, 
			String gender, String name,String imgurl) {

		User user = new User();
		user.setUsername(username);

		UserInfo userInfo = new UserInfo();
		userInfo.setAge(age);
		userInfo.setEmail(email);
		userInfo.setGender(gender);
		userInfo.setName(name);
		userInfo.setTelephone(telephone);

		// 用户名相同不可提交
		this.check(username);

		String password1 = DigestUtils.md5Hex(password);
		user.setPassword(password1);
		user.setCreateTime(new Date());
		user.setUpdateTime(user.getCreateTime());

		// UserInfo userInfo = user.getUserInfo();

		String id = UUID.randomUUID().toString();
		user.setUserId(id);

		userInfo.setUserInfoId(id);

		userInfo.setImgUrl(imgurl);
		userInfo.setCreateTime(new Date());
		userInfo.setUpdateTime(userInfo.getCreateTime());

		user.setUserInfo(userInfo);

		userMapper.saveUser(user);

		userMapper.saveUserInfo(userInfo);

	}

	
	//游记评论中根据评论用户ID查询用户
	public User findOne(String userId) {
		User user=userMapper.findOne(userId);
		return user;
	}

	
}
