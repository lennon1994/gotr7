package com.gotr.dubbo.pojo;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public class CityComment extends  BaseEntity{
    //景点ID
    private String scenicId;
    //用户ID
    private  String userId;
    //景点评论
    private  String comment;

    public String getScenicId() {
        return scenicId;
    }

    public void setScenicId(String scenicId) {
        this.scenicId = scenicId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }
}
