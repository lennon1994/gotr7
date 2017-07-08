package com.gotr.web.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.dubbo.pojo.Trip;
import com.gotr.web.mapper.HotelMapper;
import com.gotr.web.mapper.HotelPhotoMapper;
import com.gotr.web.mapper.TripMapper;
import com.gotr.web.mapper.ViewMapper;
import com.gotr.web.mapper.ViewPhotoMapper;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.pojo.Photo;
import com.gotr.web.pojo.Pois;
import com.gotr.web.pojo.View;
import com.gotr.web.service.TripService;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class TripServiceImpl implements TripService {
	@Autowired
	private TripMapper tripMapper;
	@Autowired
	private ViewPhotoMapper viewPhotoMapper;
	@Autowired
	private HotelPhotoMapper hotelPhotoMapper;
	@Autowired
	private ViewMapper viewMapper;
	@Autowired
	private HotelMapper hotelMapper;

	public void saveView(View view, String cityId) {

		view.setCreateTime(new Date());

		for (Pois pois : view.getPois()) {
			viewMapper.saveView(cityId, pois, view.getCreateTime());
			for (Photo photo : pois.getPhotos()) {
				viewPhotoMapper.savePhoto(pois.getId(), photo.getUrl());
			}

		}
	}

	public void saveHotel(Hotel hotel, String cityId) {
		hotel.setCreateTime(new Date());

		for (Pois pois : hotel.getPois()) {
			hotelMapper.saveHotel(cityId, pois, hotel.getCreateTime());
			for (Photo photo : pois.getPhotos()) {
				hotelPhotoMapper.savePhoto(pois.getId(), photo.getUrl());
			}

		}
	}

	public void saveViewId(String tripId, String[] viewId) {
		for (String str : viewId) {
			viewMapper.saveViewId(tripId, str);
		}
	}

	public void saveTrip(Trip trip, String hotelId) {

		trip.setCreateTime(new Date());

		tripMapper.saveTrip(trip, hotelId);

	}

	public List<Trip> findViewByUser(String userId) {
		return tripMapper.findViewByUser(userId);
	}
}
