package com.gotr.web.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.web.mapper.ExportExcelMapper;
import com.gotr.web.pojo.User;
import com.gotr.web.service.ExportExcelService;

/**
 * Created by CGB-yz on 2017/4/25.
 */
@Service
public class ExportExcelServiceImpl implements ExportExcelService {
    @Autowired
    private ExportExcelMapper exportExcelMapper;

    public List<User> findN_T() {
        return exportExcelMapper.findN_T();
    }
}
