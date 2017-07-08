package com.gotr.trip.mapper;


import org.apache.ibatis.annotations.Param;

/**
 * Created by CGB-yz on 2017/4/24.
 */
public interface ViewPhotoMapper {

    void savePhoto(@Param("viewId") String viewId,@Param("url") String url);

}
