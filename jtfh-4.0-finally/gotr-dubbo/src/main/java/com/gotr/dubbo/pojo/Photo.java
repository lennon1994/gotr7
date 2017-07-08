package com.gotr.dubbo.pojo;

/**
 * Created by CGB-yz on 2017/4/23.
 */
public class Photo {
    private  String url;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Photos{" +
                "url='" + url + '\'' +
                '}';
    }
}
