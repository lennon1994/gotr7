package com.gotr.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gotr.web.pojo.City;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.pojo.View;

/**
 * Created by CGB-yz on 2017/4/22.
 *
 * 景点信息mapper接口
 */
public interface CityMapper {

    void saveCity(City city);

    void updateCityTripNum(@Param("tripNum") Integer tripNum,@Param("cityId") String cityId);

    public List<City> findAll(@Param("prepage") int prepage, @Param("nextpage") int nextpage);

    public List<View> findView(String cityId);

    public List<Hotel> findHotel(String cityId);

    List<Hotel> findHotelAll(String cityId);

    public int findNum();

    public View findViewInfo(String viewId);


    public City findOne(String cityId);


    public List<String> viewPhotoUrlList(String userId);
}
