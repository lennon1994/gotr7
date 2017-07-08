package com.gotr.web.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.web.mapper.HotelMapper;
import com.gotr.web.service.HotelService;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class HotelServiceImpl implements HotelService{
    @Autowired
    private HotelMapper hotelMapper;

}
