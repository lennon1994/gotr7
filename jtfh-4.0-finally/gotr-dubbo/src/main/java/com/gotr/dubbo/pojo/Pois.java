package com.gotr.dubbo.pojo;

import java.util.List;

/**
 * Created by CGB-yz on 2017/4/23.
 */
public class Pois {
    //ID
    private String id;
    //名称
    private String name;
    //类型
    private String type;
    //地址
    private String address;
    //经纬度
    private String location;
    //电话
    private String telephone;

    //图片地址
    private List<Photo> photos;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public List<Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<Photo> photos) {
        this.photos = photos;
    }

    @Override
    public String toString() {
        return "Pois{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", address='" + address + '\'' +
                ", location='" + location + '\'' +
                ", tel='" + telephone + '\'' +
                ", photos=" + photos +
                '}';
    }
}
