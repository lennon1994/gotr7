package com.gotr.note.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gotr.common.mapper.SysMapper;
import com.gotr.dubbo.pojo.Note;



public interface NoteMapper extends SysMapper<Note>{
	 /**
     * 保存用户的游记内容
     * @param note  游记对象
     */
    public void saveNote(Note note);

    //根据用户ID查询其对应游记
    public List<Note> findNoteList(@Param("userId") String userId);
    //查看所有用户所有游记
    public List<Note> findAllNote(@Param("prepage") Integer prepage,@Param("nextpage")Integer nextpage);

    public int findNum(String userId);

	
}
