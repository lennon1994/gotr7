package com.gotr.web.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * Created by CGB-yz on 2017/4/24.
 */
public interface HotelPhotoMapper {

    void savePhoto(@Param("hotelId") String hotelId,@Param("url") String url);
}
