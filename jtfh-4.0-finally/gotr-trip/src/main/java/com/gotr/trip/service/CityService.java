package com.gotr.trip.service;



import java.util.List;

import com.gotr.dubbo.pojo.Hotel;
import com.gotr.dubbo.pojo.View;
import com.gotr.trip.pojo.City;

import com.gotr.trip.pojo.Page;




/**
 * Created by CGB-yz on 2017/4/22.
 */
public interface CityService {

    void saveCity(City city);

    void updateCityTripNum(Integer tripNum,String cityId);

    public List<City> findAll(int prepage, int nextpage);

    public List<View> findView(String cityId);

    public List<Hotel> findHotel(String cityId);

    List<Hotel> findHotelAll(String cityId);

    public Page toPage(int thispage, int rowperpage);

    public View findViewInfo(String  viewId);

    public City findOne(String cityId);

    public List<String> viewPhotoUrlList(String userId);
}
