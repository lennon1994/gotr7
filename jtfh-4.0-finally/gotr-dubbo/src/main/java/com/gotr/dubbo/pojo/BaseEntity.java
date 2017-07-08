package com.gotr.dubbo.pojo;

import java.io.Serializable;
import java.util.Date;

//抽象类
public abstract class BaseEntity implements Serializable{
    //创建时间
    public Date createTime;
    //更新时间
    public Date  updateTime;

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
