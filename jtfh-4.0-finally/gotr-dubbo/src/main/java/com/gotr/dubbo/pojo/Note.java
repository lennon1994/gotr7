package com.gotr.dubbo.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

/**
	 * Created by CGB-yz on 2017/4/25.
	 */

@Table(name="user_note_p")
public class Note extends BasePojo{
		@Id
	    private String noteId;
	    private String title;
	    private String content;
	    private String userId;

	    public String getUserId() {
	        return userId;
	    }

	    public void setUserId(String userId) {
	        this.userId = userId;
	    }

	    public String getNoteId() {
	        return noteId;
	    }

	    public void setNoteId(String noteId) {
	        this.noteId = noteId;
	    }

	    public String getTitle() {
	        return title;
	    }

	    public void setTitle(String title) {
	        this.title = title;
	    }

	    public String getContent() {
	        return content;
	    }

	    public void setContent(String content) {
	        this.content = content;
	    }

	    @Override
	    public String toString() {
	        return "Note{" +
	                "noteId='" + noteId + '\'' +
	                ", title='" + title + '\'' +
	                ", content='" + content + '\'' +
	                ", userId='" + userId + '\'' +
	                '}';
	    }
}
