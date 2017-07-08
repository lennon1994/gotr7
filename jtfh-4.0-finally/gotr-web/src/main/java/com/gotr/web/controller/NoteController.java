package com.gotr.web.controller;


import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gotr.common.util.CookieUtils;
import com.gotr.dubbo.note.DubboNoteService;
import com.gotr.dubbo.pojo.Comment;
import com.gotr.dubbo.pojo.Note;
import com.gotr.dubbo.pojo.Page;
import com.gotr.dubbo.pojo.User;
import com.gotr.dubbo.sso.DubboUserService;
import com.gotr.web.threadLocal.UserThreadLocal;



/**
 * Created by CGB-yz on 2017/4/25.
 */
@Controller
public class NoteController {
    
    @Autowired
    private DubboNoteService dubboNoteService;
    @Autowired
    private DubboUserService dubboUserService;
    

    /**
     * @return  转到查看游记的页面
     */
    @RequestMapping("toNote")
    public String toNote(Model model, Integer thispage,String noteId,HttpServletRequest request){
    	String ticket = CookieUtils.getCookieValue(request, "GOTR_TICKET");//获取cookie，，cookies用的common里的工具类
        User user = dubboUserService.queryByTicket(ticket);
        
        int  rowperpage = 1 ;
        Page page = dubboNoteService.toPage(thispage,rowperpage,user.getUserId()) ;
        int prepage = page.getPrepage() ;
        int nextpage = page.getNextpage() ;
        model.addAttribute("page",page) ;
        
        //查询所有用户的所有游记
        List<Note> allNote=dubboNoteService.findAllNote(thispage-1,rowperpage);
        model.addAttribute("allNote",allNote);
        noteId=allNote.get(0).getNoteId();
        
        //获取游记评论
        List<Comment> commentList=dubboNoteService.findCommentList(noteId);
        model.addAttribute("commentList",commentList);
        
        //查询游记评论对应的用户
        Collection<User> userList=new HashSet<User>();
        for (Comment comment : commentList) {
			String uId=comment.getUserId();
			User user_note=dubboUserService.findOne(uId);
			userList.add(user_note);
		}
        model.addAttribute("userList",userList);
        return "toNote";
    }


    /**
     * 根据用户ID跳转到写游记的页面
     * @param userId  对应用户的ID
     * @return  转到写游记的页面
     */
    @RequestMapping("note")
    public String note(String userId,Model model){
        model.addAttribute("userId",userId);
        return "note";
    }
    /**
     * 保存用户的游记内容
     * @param note  游记对象包含游记标题和内容
     * @return 保存游记后重定向到查看游记页面
     */
    @RequestMapping("saveNote")
    public String saveNote(String userId, Note note, String text){
        note.setContent(text);
        userId=UserThreadLocal.getUserId();
        note.setUserId(userId);
        dubboNoteService.saveNote(note.getContent(),note.getTitle(),note.getUserId());
        return "forward:/toNote.action?thispage=1";
    }

    
    /**
     * 提交游记评论
     */
    @RequestMapping("saveComment")
    public String saveComment(Comment comment){
    	String userId=UserThreadLocal.getUserId();
    	dubboNoteService.saveComment(comment.getNoteId(),userId,comment.getComment());
    	return "forward:/toNote.action?thispage=1";
    }
    

}
