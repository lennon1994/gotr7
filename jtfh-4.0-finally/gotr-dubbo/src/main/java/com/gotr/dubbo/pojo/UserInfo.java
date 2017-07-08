package com.gotr.dubbo.pojo;

import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="user_info_p")
public class UserInfo extends BasePojo{
	 //用户ID
	@Id
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

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

}
