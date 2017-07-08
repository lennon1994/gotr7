package com.gotr.web.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.web.mapper.CityCommentMapper;
import com.gotr.web.service.CityCommentService;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class CityCommentServiceImpl implements CityCommentService {
    @Autowired
    private CityCommentMapper cityCommentMapper;

}
