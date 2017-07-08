package com.gotr.note.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gotr.common.mapper.SysMapper;
import com.gotr.dubbo.pojo.Comment;

public interface CommentMapper extends SysMapper<Comment>{
	//查看游记评论
	List<Comment> findCommentList(@Param("noteId")String noteId);
	 
}
