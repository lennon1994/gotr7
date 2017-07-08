package com.gotr.trip.dubbo;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.gotr.dubbo.pojo.Hotel;
import com.gotr.dubbo.pojo.Trip;
import com.gotr.dubbo.pojo.View;
import com.gotr.dubbo.trip.DubboTripService;
import com.gotr.trip.mapper.TripMapper;
import com.gotr.trip.pojo.City;
import com.gotr.trip.service.CityService;
import com.gotr.trip.service.TripService;
import com.gotr.trip.tool.InfoUtils;

public class DubboTripServiceImpl implements DubboTripService {
	@Autowired
	private TripService tripService;
	@Autowired
	private CityService cityService;
	@Autowired
	private TripMapper tripMapper;
	private static final ObjectMapper MAPPER = new ObjectMapper();

	
	public void toMap(String endName) {
		// 根据目的地查询周边景点信息
		String keywords="景点";
		String ViewInfo = InfoUtils.getInfo(keywords, endName);
		JsonObject ViewInfoObj = new JsonParser().parse(ViewInfo).getAsJsonObject();
		View view = new Gson().fromJson(ViewInfoObj, View.class);
		String photoUrl = view.getPois().get(1).getPhotos().get(1).getUrl();
		// 保存城市信息
		City city = new City();
		city.setCreateTime(new Date());
		city.setName(endName);
		city.setCityId(Integer.toHexString(endName.hashCode()));
		city.setPhotoUrl(photoUrl);
		cityService.saveCity(city);
		Integer tripNum = 1;
		cityService.updateCityTripNum(tripNum, city.getCityId());
		// 将景点信息插入数据库
		tripService.saveView(view, city.getCityId());
		// 根据目的地查询周边酒店信息
		keywords="酒店";
		String HotelInfo = InfoUtils.getInfo(keywords, endName);
		JsonObject HotelInfoObj = new JsonParser().parse(HotelInfo).getAsJsonObject();
		Hotel hotel1 = new Gson().fromJson(HotelInfoObj, Hotel.class);
		tripService.saveHotel(hotel1, city.getCityId());

	}

	
	public List<View> toView(String cityId) {
		List<View> viewList = cityService.findView(cityId);
		return viewList;
	}

	
	public List<Hotel> toHotel(String cityId, String ViewIdString) {
		String[] viewId = ViewIdString.split(",");
		tripService.saveViewId(cityId, viewId);
		List<Hotel> hotelList = cityService.findHotelAll(cityId);
		return hotelList;
	}

	
	public List<Trip> endtrip(String tripString, String userId, String hotelId) {
		Trip trip=null;
		try {
			trip=MAPPER.readValue(tripString, Trip.class);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		tripService.saveTrip(trip, hotelId);
		List<Trip> tripList = tripMapper.findViewByUser(userId);
		return tripList;
	}

}
