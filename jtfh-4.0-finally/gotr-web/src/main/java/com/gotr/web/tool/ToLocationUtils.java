package com.gotr.web.tool;

import java.util.HashMap;
import java.util.Map;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import net.sf.json.JSONObject;
/**
 * Created by CGB-yz on 2017/4/25.
 */
public class ToLocationUtils {

        public static Map<String,Double> getLngAndLat(String address){
            Map<String,Double> map=new HashMap<String, Double>();
            String url = "http://api.map.baidu.com/geocoder/v2/?address="+address+"&output=json&ak=4kvZxlIOzsx8fGzp7Fs91DeZaSBVzZ2x";
            String json = loadJSON(url);
            JSONObject obj = JSONObject.fromObject(json);
            if(obj.get("status").toString().equals("0")){
                double lng=obj.getJSONObject("result").getJSONObject("location").getDouble("lng");
                double lat=obj.getJSONObject("result").getJSONObject("location").getDouble("lat");
                map.put("lng", lng);
                map.put("lat", lat);
                //System.out.println("经度："+lng+"---纬度："+lat);
            }else{
                //System.out.println("未找到相匹配的经纬度！");
            }
            return map;
        }

        public static String loadJSON (String url) {
            StringBuilder json = new StringBuilder();
            try {
                URL oracle = new URL(url);
                URLConnection yc = oracle.openConnection();
                BufferedReader in = new BufferedReader(new InputStreamReader(
                        yc.getInputStream()));
                String inputLine = null;
                while ( (inputLine = in.readLine()) != null) {
                    json.append(inputLine);
                }
                in.close();
            } catch (MalformedURLException e) {
            } catch (IOException e) {
            }
            return json.toString();
        }

    }


