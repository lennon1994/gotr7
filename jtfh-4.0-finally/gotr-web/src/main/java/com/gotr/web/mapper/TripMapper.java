package com.gotr.web.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gotr.dubbo.pojo.Trip;


/**
 * Created by CGB-yz on 2017/4/22.
 *
 * 行程mapper接口
 */
public interface TripMapper {

    public void saveTrip(@Param("trip") Trip trip,@Param("hotelId") String hotelId);

    public List<Trip> findViewByUser(String userId);

}
