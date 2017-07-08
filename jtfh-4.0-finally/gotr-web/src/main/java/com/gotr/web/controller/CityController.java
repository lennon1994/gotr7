package com.gotr.web.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gotr.web.pojo.City;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.pojo.Page;
import com.gotr.web.pojo.View;
import com.gotr.web.pojo.View_Search;
import com.gotr.web.service.CityService;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Controller
public class CityController extends BaseController {
   @Autowired
    private CityService cityService;


    @RequestMapping("/toCity")
    public String findAll(Model model,Integer thispage){
        int  rowperpage = 9 ;
        Page page = cityService.toPage(thispage,rowperpage) ;
        int prepage = page.getPrepage() ;
        int nextpage = page.getNextpage() ;
        List<City> cityList = cityService.findAll(prepage,nextpage) ;
        model.addAttribute("cityList",cityList) ;
        model.addAttribute("page",page) ;
        return "/city/city" ;
    }


    @RequestMapping("toView")
    public String findOne(Model model,String cityId){
        List<View> viewsList = cityService.findView(cityId) ;
        List<Hotel> HotelList = cityService.findHotel(cityId) ;
        City cityInfo = cityService.findOne(cityId) ;
        model.addAttribute("cityInfo",cityInfo) ;
        model.addAttribute("HotelList",HotelList) ;
        model.addAttribute("viewsList", viewsList) ;
        return "/city/view" ;
    }


    @RequestMapping("toViewInfo")
    public String findViewInfo(Model model,String  viewId){
        View_Search viewInfo =  cityService.findViewInfo(viewId);
        model.addAttribute("viewInfo",viewInfo);
        return "city/viewInfo" ;
    }



}
