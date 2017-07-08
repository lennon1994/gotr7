package com.gotr.trip.service.impl;


import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.dubbo.pojo.Trip;
import com.gotr.trip.mapper.HotelMapper;
import com.gotr.trip.mapper.HotelPhotoMapper;
import com.gotr.trip.mapper.TripMapper;
import com.gotr.trip.mapper.ViewMapper;
import com.gotr.trip.mapper.ViewPhotoMapper;
import com.gotr.trip.service.TripService;


/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class TripServiceImpl implements TripService{
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


    public void saveView(com.gotr.dubbo.pojo.View view,String cityId) {

        view.setCreateTime(new Date());

        for (com.gotr.dubbo.pojo.Pois pois: view.getPois()
             ) {
            viewMapper.saveView(cityId,pois,view.getCreateTime());
            for (com.gotr.dubbo.pojo.Photo photo:pois.getPhotos()
                 ) {
                viewPhotoMapper.savePhoto(pois.getId(),photo.getUrl());
            }

        }
    }

    public void saveHotel(com.gotr.dubbo.pojo.Hotel hotel, String cityId) {
        hotel.setCreateTime(new Date());

        for (com.gotr.dubbo.pojo.Pois pois: hotel.getPois()
                ) {
            hotelMapper.saveHotel(cityId,pois,hotel.getCreateTime());
            for (com.gotr.dubbo.pojo.Photo photo:pois.getPhotos()
                    ) {
                hotelPhotoMapper.savePhoto(pois.getId(),photo.getUrl());
            }

        }
    }

    public void saveViewId(String tripId, String[] viewId) {
        for (String str:viewId
             ) {
            viewMapper.saveViewId(tripId,str);
        }


    }

    public void saveTrip(Trip trip,String hotelId) {

        trip.setCreateTime(new Date());

        tripMapper.saveTrip(trip,hotelId);

    }

    public List<com.gotr.dubbo.pojo.Trip> findViewByUser(String userId) {
        return tripMapper.findViewByUser(userId);
    }

	

	
}
