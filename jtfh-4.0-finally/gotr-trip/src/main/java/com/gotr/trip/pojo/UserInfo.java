package com.gotr.trip.pojo;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public class UserInfo extends BaseEntity{
    //用户ID
    private String userInfoId;
    //真实姓名
    private  String name;
    //性别
    private  String gender;
    //年龄
    private  Integer age;
    //邮箱
    private  String email;
    //电话
    private String  telephone;

    private  String imgUrl;

    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    public String getUserInfoId() {
        return userInfoId;
    }

    public void setUserInfoId(String userInfoId) {
        this.userInfoId = userInfoId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    @Override
    public String toString() {
        return "UserInfo{" +
                "userInfoId='" + userInfoId + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", age=" + age +
                ", email='" + email + '\'' +
                ", telephone='" + telephone + '\'' +
                ", imgUrl='" + imgUrl + '\'' +
                '}';
    }
}
