package com.gotr.web.pojo;

import java.util.Date;

import com.gotr.common.po.BasePojo;

public class View_Search extends BasePojo{	
	private String city_name;
	private String cwhere;
	private String view_id;
	private String view_name;
	private String score;
	private String type;
	private String play_time;
	private String address;
	private String light_spot;
	private String intro;
	private String message;
	private String images;
	private Date created;
	private Date updated;
	

	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Date getUpdated() {
		return updated;
	}
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
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
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getCwhere() {
		return cwhere;
	}
	public void setCwhere(String cwhere) {
		this.cwhere = cwhere;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
	}
	public String getView_id() {
		return view_id;
	}
	public void setView_id(String view_id) {
		this.view_id = view_id;
	}
	public String getView_name() {
		return view_name;
	}
	public void setView_name(String view_name) {
		this.view_name = view_name;
	}
	public String getPlay_time() {
		return play_time;
	}
	public void setPlay_time(String play_time) {
		this.play_time = play_time;
	}
	public String getLight_spot() {
		return light_spot;
	}
	public void setLight_spot(String light_spot) {
		this.light_spot = light_spot;
	}
	
	public String getImage() {
		if(images!=null){
			return images.split(",")[0];
		}
		return null;
	}

}
