package com.gotr.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.gotr.web.pojo.Hotel;
import com.gotr.web.tool.InfoUtils;

/**
 * Created by CGB-yz on 2017/4/23.
 */
@Controller
public class TestController {
    @RequestMapping("find")
    public String find(){
        String urlStr = "http://restapi.amap.com/v3/place/text";
        // 从http://whois.pconline.com.cn取得IP所在的省市区信息
        String returnStr = InfoUtils.getInfo("酒店","上海");
        System.out.println(returnStr);
        JsonObject obj = new JsonParser().parse(returnStr).getAsJsonObject();
        Hotel hotel = new Gson().fromJson(obj,Hotel.class);
        System.out.println(hotel);
        return "";
    }

}
