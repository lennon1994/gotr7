package com.gotr.web.mapper;


import java.util.Date;

import org.apache.ibatis.annotations.Param;

import com.gotr.web.pojo.Pois;

/**
 * Created by CGB-yz on 2017/4/23.
 */
public interface ViewMapper {

    void saveView(@Param("cityId") String cityId, @Param("pois") Pois pois, @Param("createTime") Date createTime);

    void saveViewId(@Param("tripId") String tripId,@Param("viewId") String viewId);
}

