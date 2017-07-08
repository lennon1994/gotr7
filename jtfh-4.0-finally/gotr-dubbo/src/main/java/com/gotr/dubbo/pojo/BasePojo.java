package com.gotr.dubbo.pojo;

import java.io.Serializable;
import java.util.Date;

//必须序列化，dubbox报错
public class BasePojo implements Serializable{
	private Date createTime;
	private Date updateTime;
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public Date getUpdateTime() {
		return updateTime;
	}
	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	
}
