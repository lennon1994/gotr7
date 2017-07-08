package com.gotr.web.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gotr.common.service.HttpClientService;



@Service
public class SearchService {
	@Autowired
	private HttpClientService httpClientService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	
	//发起httpClient请求，访问search服务，返回数据
	@SuppressWarnings("unchecked")
	public String search(String keyWords, Integer page, Integer rows) throws Exception{
		if(page==null){ page=1; }
		if(rows==null){ rows=20;}
		// http://search.gotr.com/searchView
		String url = "http://search.gotr.com/searchView/"+keyWords+"/"+page+"/"+rows;
		String jsonData = httpClientService.doGet(url);
		
		JsonNode jsonNode = MAPPER.readTree(jsonData);
        JsonNode data = jsonNode.get("data");//获取查询数据
        return jsonData;
	}
}
