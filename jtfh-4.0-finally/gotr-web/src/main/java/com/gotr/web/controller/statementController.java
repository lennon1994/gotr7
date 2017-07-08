package com.gotr.web.controller;



import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.gotr.web.pojo.City;

/**
 * Created by CGB-yz on 2017/4/24.
 */
public class statementController {
    public List<Map<String,Object>> createList(List<City> citys){
        if(null == citys){
            return null;
        }
        String[] keys = {"name","tripNum"};
        String[] excelHeader = {"城市","访问次数"};
        List<Map<String,Object>> list = new ArrayList<Map<String, Object>>();
        Map<String,Object> model = new HashMap<String, Object>();
        model.put("fileName","城市表"+new Date().getTime());
        model.put("sheetName","表一");
        model.put("title","城市表");
        model.put("keys",keys);
        model.put("excelHeader",excelHeader);
        list.add(model);
        for (City city: citys) {
            Map<String,Object> map = new HashMap<String, Object>();
            map.put("name",city.getName());
            map.put("tripNum",city.getTripNum());
            list.add(map);
        }
        return list;
    }
}
