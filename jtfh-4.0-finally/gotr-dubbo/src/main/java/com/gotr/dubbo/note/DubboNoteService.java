package com.gotr.dubbo.note;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.gotr.dubbo.pojo.Comment;
import com.gotr.dubbo.pojo.Note;
import com.gotr.dubbo.pojo.Page;


@Path("")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboNoteService {
	
	/**
     * 根据用户ID查询其对应游记
     * @param userId
     */
	@GET
	@Path("findNoteList")
    public List<Note> findNoteList(@QueryParam(value="userId")String userId);
	
	/**
     * 查看所有用户所有游记
     */
	@GET
	@Path("findAllNote")
    public List<Note> findAllNote(
    		@QueryParam(value="prepage")Integer prepage,
    		@QueryParam(value="nextpage")Integer nextpage);
	
	
    /**
     * @param thispage
     * @param rowperpage
     * @param userId
     * @return
     */
	@GET
	@Path("page")
    public Page toPage(
    		@QueryParam(value="thispage")Integer thispage, 
    		@QueryParam(value="rowperpage")Integer rowperpage,
    		@QueryParam(value="userId")String userId);
    
	/**
     * 保存用户的游记内容
     * @param note  游记对象包含游记标题和内容
     */
	@GET
	@Path("saveNode")
    public String saveNote(
    		@QueryParam(value="content")String content,
    		@QueryParam(value="title")String title,
    		@QueryParam(value="userId")String userId
    		);

	/**
	 * 保存游记评论
	 * @param noteId 游记ID
	 * @param userId 评论用户ID
	 * @param comment 评论内容
	 */
	@GET
	@Path("saveComment")
	public void saveComment(
			@QueryParam(value="noteId")String noteId,
			@QueryParam(value="userId")String userId,
			@QueryParam(value="comment")String comment);

	/**
	 * 查看游记评论
	 * @param noteId 游记ID
	 * @return
	 */
	@GET
	@Path("findComment")
	public List<Comment> findCommentList(@QueryParam(value="noteId")String noteId);
	
}
