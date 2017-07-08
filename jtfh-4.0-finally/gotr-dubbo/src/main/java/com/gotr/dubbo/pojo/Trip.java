package com.gotr.dubbo.pojo;

import java.util.Date;
import java.util.List;

import javax.persistence.Table;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Table(name="trip_p")
public class Trip extends  BaseEntity{
    //行程ID
    private   String tripId;
    //用户ID
    private  String userId;
    //城市ID
    private  String cityId;
    //起点名称
    private  String startName;
    //行程周期
    private  Integer tripTime;
    //开始日期
    private Date startTime;
    //结束日期
    private  Date endTime;

    private  String endName;

    private Hotel hotel;

    private List<String> viewNameList;

    private String photo;

    private List<View> viewList;

    public List<String> getViewNameList() {
        return viewNameList;
    }

    public void setViewNameList(List<String> viewNameList) {
        this.viewNameList = viewNameList;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getEndName() {
        return endName;
    }

    public void setEndName(String endName) {
        this.endName = endName;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    public String getTripId() {
        return tripId;
    }

    public void setTripId(String tripId) {
        this.tripId = tripId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getStartName() {
        return startName;
    }

    public void setStartName(String startName) {
        this.startName = startName;
    }

    public Integer getTripTime() {
        return tripTime;
    }

    public void setTripTime(Integer tripTime) {
        this.tripTime = tripTime;
    }

    public Date getStartTime() {
        return startTime;
    }

    public void setStartTime(Date startTime) {
        this.startTime = startTime;
    }

    public Date getEndTime() {
        return endTime;
    }

    public void setEndTime(Date endTime) {
        this.endTime = endTime;
    }

    public List<View> getViewList() {
        return viewList;
    }

    public void setViewList(List<View> viewList) {
        this.viewList = viewList;
    }
}
