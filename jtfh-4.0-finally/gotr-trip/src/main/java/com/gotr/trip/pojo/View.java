package com.gotr.trip.pojo;

import java.util.List;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public class View extends BaseEntity{
    //景点ID
    private  String viewId;
    //景点名称
    private  String name;
    //景点类型
    private  String type;
    //景点地址
    private  String address;
    //景点坐标
    private  String location;
    //所属城市
    private  City city;

    public String getViewId() {
        return viewId;
    }

    public void setViewId(String viewId) {
        this.viewId = viewId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    private List<Pois> pois;

    public List<Pois> getPois() {
        return pois;
    }

    public void setPois(List<Pois> pois) {
        this.pois = pois;
    }



}
