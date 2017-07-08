package com.gotr.web.pojo;

import java.util.List;

/**
 * Created by CGB-yz on 2017/4/22.
 */

public class Hotel extends  BaseEntity{

    //酒店ID
    private String hotelId;
    //酒店名称
    private  String name;
    //酒店坐标
    private String location;
    //酒店电话
    private String telephone ;

    private String type;

    //所属城市
    private City city;

    private String address;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    private String    cityId;

    private List<Pois> pois;

    public String getCityId() {
        return cityId;
    }

    public void setCityId(String cityId) {
        this.cityId = cityId;
    }

    public List<Pois> getPois() {
        return pois;
    }

    public void setPois(List<Pois> pois) {
        this.pois = pois;
    }

    @Override
    public String toString() {
        return "Hotel{" +
                "pois=" + pois +
                '}';
    }
}

