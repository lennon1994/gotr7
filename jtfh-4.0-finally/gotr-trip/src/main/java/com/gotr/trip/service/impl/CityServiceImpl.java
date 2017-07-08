package com.gotr.trip.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gotr.trip.mapper.CityMapper;
import com.gotr.trip.pojo.City;
import com.gotr.dubbo.pojo.Hotel;
import com.gotr.trip.pojo.Page;
import com.gotr.dubbo.pojo.View;
import com.gotr.trip.service.CityService;



/**
 * Created by CGB-yz on 2017/4/22.
 */
@Service
public class CityServiceImpl implements CityService {
    @Autowired
    private CityMapper cityMapper;

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

	@Override
	public View findViewInfo(String viewId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public City findOne(String cityId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<String> viewPhotoUrlList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

   


}
