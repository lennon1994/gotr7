package com.gotr.dubbo.sso;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.gotr.dubbo.pojo.User;


//Dubbox支持RESTFul结构

@Path("")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboUserService {
	
	@GET
	@Path("check")
	public Boolean check(
			@QueryParam(value="username") String username);
	
	//RESTFul不支持对象，只能使用一个一个属性
	
	@POST
	@Path("register/register")
	public void register(
			@QueryParam(value="username") String username,
			@QueryParam(value="password") String password, 
			@QueryParam(value="age") Integer age,
			@QueryParam(value="email")  String email,
			@QueryParam(value="telephone") String  telephone,
			@QueryParam(value="name")String name,
			@QueryParam(value="gender") String gender,
			@QueryParam(value="imgurl") String imgurl
			);
	
	
	@POST
	@Path("login")
	public String login(
			@QueryParam(value="username") String username, 
			@QueryParam(value="password") String password);
	
	
	@GET
	@Path("query")
	public User queryByTicket(@QueryParam(value="ticket") String ticket);
	
	
	@GET
	@Path("findOne")
	public User findOne(@QueryParam(value="userId")String uId);

	
	
}
