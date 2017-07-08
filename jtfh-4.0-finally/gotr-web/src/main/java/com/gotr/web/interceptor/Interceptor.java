package com.gotr.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.gotr.common.service.HttpClientService;
import com.gotr.common.util.CookieUtils;
import com.gotr.dubbo.pojo.User;
import com.gotr.dubbo.sso.DubboUserService;
import com.gotr.web.threadLocal.UserThreadLocal;

public class Interceptor implements HandlerInterceptor {

	@Autowired
	private HttpClientService httpClientService;
	private static final ObjectMapper MAPPER=new ObjectMapper();
	@Autowired
	private DubboUserService dubboUserService;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		// 获取userId
		// 从cookie中获取
		String ticket = CookieUtils.getCookieValue(request, "GOTR_TICKET");
		if (StringUtils.isNotEmpty(ticket)) {
			User curUser = dubboUserService.queryByTicket(ticket);
			UserThreadLocal.set(curUser);
			return true; // false不放行，true都放行
		}
		// 当没有ticket时转向登录页面
		UserThreadLocal.set(null);
		return false;

	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
