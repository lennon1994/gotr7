package com.gotr.web.tool;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

/**
 * Created by CGB-yz on 2017/4/23.
 */
public class InfoUtils {

    public static String getInfo(String keywords,String city){
        String json = null;
        StringBuffer sb = new StringBuffer();
        try {
            URL url = new URL("http://restapi.amap.com/v3/place/text?key=5a55e47abc701d3b8a1037c30dcbaa8d&keywords="+keywords+"&types=&city="+"杭州"+"&children=1&offset=10&page=1&extensions=all");
            InputStreamReader isr = new InputStreamReader(url.openStream());
            char[] buffer = new char[1024];
            int len = 0;
            while((len=isr.read(buffer))!=-1){
                sb.append(buffer,0,len);
            }

        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        json=sb.toString();
        System.out.println(json);
        return json;
    }

}
