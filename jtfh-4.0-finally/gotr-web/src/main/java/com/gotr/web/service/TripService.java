package com.gotr.web.service;



import java.util.List;

import com.gotr.dubbo.pojo.Trip;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.pojo.View;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public interface TripService {

    void saveView(View view,String cityId);

    void saveHotel(Hotel hotel, String cityId);

    void saveViewId(String tripId, String[] viewId);

    void saveTrip(Trip trip,String hotelId);

    List<Trip> findViewByUser(String userId);



}
