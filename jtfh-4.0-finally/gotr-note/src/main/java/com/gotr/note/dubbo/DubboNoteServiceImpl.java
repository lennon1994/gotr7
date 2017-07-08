package com.gotr.note.dubbo;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.persistence.AttributeOverride;

import org.springframework.beans.factory.annotation.Autowired;

import com.gotr.dubbo.note.DubboNoteService;
import com.gotr.dubbo.pojo.Comment;
import com.gotr.dubbo.pojo.Note;
import com.gotr.dubbo.pojo.Page;
import com.gotr.note.mapper.CommentMapper;
import com.gotr.note.mapper.NoteMapper;


public class DubboNoteServiceImpl implements DubboNoteService{
	@Autowired
	private NoteMapper noteMapper;
	@Autowired
	private CommentMapper commentMapper;
	
	
	//查看当前用户所有游记
	public List<Note> findNoteList(String userId) {
		List<Note> noteList=noteMapper.findNoteList(userId);
		return noteList;
	}
	
	//查询所有用户所有游记
	public List<Note> findAllNote(Integer prepage, Integer nextpage) {
		List<Note> allNote=noteMapper.findAllNote(prepage,nextpage);
		return allNote;
	}

	//游记分页
	public Page toPage(Integer thispage, Integer rowperpage, String userId) {
		Page page = new Page();
		// 分装分页相关
		page.setThispage(thispage);
		page.setRowperpage(rowperpage);
		// 总行数
		int countrow = noteMapper.findNum(userId);
		page.setCountrow(countrow);
		// 总页数
		int countpage = countrow / rowperpage + (countrow % rowperpage == 0 ? 0 : 1);
		// int countpage = countrow/rowperpage;
		page.setCountpage(countpage);
		// 设置上一页
		page.setPrepage(thispage == 1 ? 1 : thispage - 1);
		page.setNextpage(thispage == countpage ? countpage : thispage + 1);
		return page;
	}

	//保存游记
	public String saveNote(String content, String title,String userId) {
		Note note = new Note();
		note.setContent(content);
		note.setTitle(title);
		note.setUserId(userId);
		note.setNoteId(UUID.randomUUID().toString());
		note.setCreateTime(new Date());
		note.setUpdateTime(note.getCreateTime());
		noteMapper.insertSelective(note);
		return note.getNoteId();
	}

	//保存游记的评论
	public void saveComment(String noteId, String userId, String text) {
		Comment comment=new Comment();
		comment.setComment(text);
		comment.setCreated(new Date());
		comment.setNoteId(noteId);
		comment.setUserId(userId);
		commentMapper.insertSelective(comment);
	}

	//查看游记评论
	public List<Comment> findCommentList(String noteId) {
		Comment comment=new Comment();
		comment.setNoteId(noteId);
		List<Comment> commentList=commentMapper.select(comment);
		return commentList ;
	}

	
}
