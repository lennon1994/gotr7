package com.gotr.trip.service;

import java.util.List;

import com.gotr.dubbo.pojo.Hotel;
import com.gotr.dubbo.pojo.View;
import com.gotr.dubbo.pojo.Trip;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public interface TripService {

	public void saveView(View view,String cityId);

    public void saveHotel(Hotel hotel, String cityId);

    public void saveViewId(String tripId, String[] viewId);

    public void saveTrip(Trip trip,String hotelId);

    public List<Trip> findViewByUser(String userId);




}
