package com.gotr.dubbo.pojo;

/**
 * Created by CGB-yz on 2017/4/23.
 */
public class City extends  BaseEntity{

    private  String name;

    private String cityId;
    //行程数
    private  Integer tripNum;

    private String photoUrl;


    public Integer getTripNum() {
        return tripNum;
    }

    public void setTripNum(Integer tripNum) {
        this.tripNum = tripNum;
    }

    public String getName() {
        return name;
    }

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public String getPhotoUrl() {
        return photoUrl;
    }

    public void setPhotoUrl(String photoUrl) {
        this.photoUrl = photoUrl;
    }

    public void setName(String name) {
        this.name = name;
    }
}
