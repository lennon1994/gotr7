package com.gotr.web.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.web.mapper.CityMapper;
import com.gotr.web.mapper.View_SearchMapper;
import com.gotr.web.pojo.City;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.pojo.Page;
import com.gotr.web.pojo.View;
import com.gotr.web.pojo.View_Search;
import com.gotr.web.service.CityService;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private CityMapper cityMapper;
    @Autowired
    private View_SearchMapper view_SearchMapper;
    

    public void saveCity(City city) {
        cityMapper.saveCity(city);
    }

    public void updateCityTripNum(Integer tripNum,String cityId) {
        cityMapper.updateCityTripNum(tripNum,cityId);
    }

    public List<City> findAll(int prepage, int nextpage) {
        return cityMapper.findAll(prepage,nextpage);
    }

    public List<View> findView(String cityId) {
        return cityMapper.findView(cityId);
    }

    public List<Hotel> findHotel(String cityId) {
        return cityMapper.findHotel(cityId);
    }

    public List<Hotel> findHotelAll(String cityId) {
        return cityMapper.findHotelAll(cityId);
    }

    public Page toPage(int thispage, int rowperpage) {

        Page page = new Page();
        //分装分页相关
        page.setThispage(thispage);
        page.setRowperpage(rowperpage);
        //总行数
        int countrow = cityMapper.findNum() ;
        page.setCountrow(countrow);
        //总页数
        int countpage = countrow/rowperpage + (countrow%rowperpage==0?0:1);
//        int countpage = countrow/rowperpage;
        page.setCountpage(countpage);
        //设置上一页
        page.setPrepage(thispage==1?1:thispage-1);
        page.setPrepage(10*thispage-10);
        //设置下一页
        page.setNextpage(9);

        return page;
    }

    public View_Search findViewInfo(String  viewId) {
        return view_SearchMapper.findViewInfo(viewId);
    }

    public City findOne(String cityId) {
        return cityMapper.findOne(cityId);
    }

    public List<String> viewPhotoUrlList(String userId){
        return cityMapper.viewPhotoUrlList(userId);
    }


}
