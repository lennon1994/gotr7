package com.gotr.web.mapper;


import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.gotr.web.pojo.Pois;

/**
 * Created by CGB-yz on 2017/4/22.
 *
 * 酒店信息mapper接口
 */
public interface HotelMapper {

    void saveHotel(@Param("cityId") String cityId, @Param("pois") Pois pois,@Param("createTime") Date createTime);

//    void saveHotelIdByTrip(String tripId,String hotelId);
}
