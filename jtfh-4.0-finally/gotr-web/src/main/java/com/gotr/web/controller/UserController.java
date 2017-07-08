package com.gotr.web.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gotr.common.util.CookieUtils;
import com.gotr.common.vo.SysResult;
import com.gotr.dubbo.note.DubboNoteService;
import com.gotr.dubbo.pojo.Note;
import com.gotr.dubbo.pojo.User;
import com.gotr.dubbo.sso.DubboUserService;

@Controller
public class UserController {
	@Autowired
	private DubboUserService dubboUserService;
	@Autowired
	private DubboNoteService dubboNoteService;
	
	
	 /**
     * 跳转到注册用户页面
     * @return 具体注册页面
     */
    @RequestMapping("register/register")
    public String register(){
        return "register/register";
    }
    
    /**
     * 用户注册
     * @param user 注册的用户对象
     * @return 返回到用户列表页面
     */
	@RequestMapping("/register/save")
    public String saveUser(User user, MultipartFile photo, HttpServletRequest context) throws IOException {
        String imgName=photo.getOriginalFilename();
        String path="/upload";
        String code = Integer.toHexString(imgName.hashCode());
        char[] chs = code.toCharArray();
        for(int i=0;i<chs.length;i++){
            path=path+"/"+chs[i];
        }
        //5.创建目录
        new File(context.getRealPath(path)).mkdirs();
        FileOutputStream fileOutputStream = new FileOutputStream(
                new File(context.getRealPath(path+"/"+imgName)));
        fileOutputStream.write(photo.getBytes());
        dubboUserService.register(user.getUsername(),user.getPassword(),user.getUserInfo().getAge(),
                user.getUserInfo().getEmail(),user.getUserInfo().getTelephone(),
                user.getUserInfo().getGender(),user.getUserInfo().getName(),path+"/"+imgName);
        return "redirect:/index.action";
    }

    
    //登录
    @RequestMapping("login")
    public String login(Model model, String username, String password, 
    		HttpSession session,HttpServletRequest request, HttpServletResponse response) {
        if(StringUtils.isEmpty(username)||StringUtils.isEmpty(password)){
            String errorInfo="用户名或密码不能为空";
            model.addAttribute("errorInfo", errorInfo);
            return "/index";
        }
        String ticket = dubboUserService.login(username, password);
        CookieUtils.setCookie(request, response, "GOTR_TICKET", ticket);
        return "/index";
    }
    
    
	//登录的回显
	@RequestMapping("query/{ticket}")
	@ResponseBody
	public SysResult queryByTicket(@PathVariable String ticket,Model model){
		User user = dubboUserService.queryByTicket(ticket);
		model.addAttribute(user);
		return SysResult.oK(user);
	}
    
    
    //判断用户是否存在
    @RequestMapping("check/{username}")
    public String check(@PathVariable String username,Model model){
		Boolean flag = dubboUserService.check(username);
		model.addAttribute("userContains",flag);
		return String.valueOf(flag);
	}
    
    //登出
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response){
		//删除cookie
		CookieUtils.deleteCookie(request, response, "GOTR_TICKET");
		return "index"; 
	}
	
	
	/**
     * @return 用户详细信息页
     */
    @RequestMapping("/profile-page/profile-page")
    public String profilePage(String userId,Model model){

        User user=dubboUserService.findOne(userId);
        model.addAttribute("user_info",user);

//        //根据用户ID查询其要去的景点图片地址,返回地址集合
//        List<String> viewPhotoUrlList=cityService.viewPhotoUrlList(userId);
//        model.addAttribute("viewPhotoUrlList",viewPhotoUrlList);
//
//        List<Trip> tripList=tripMapper.findViewByUser(userId);
//        model.addAttribute("tripList",tripList);
//
        //根据用户ID查询其对应游记
        List<Note> noteList=dubboNoteService.findNoteList(userId);
        model.addAttribute("noteList",noteList);
        return "profile-page/profile-page";
    }
    
    
}
