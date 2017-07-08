package com.gotr.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gotr.web.pojo.View_Search;
import com.gotr.web.service.impl.SearchService;

@Controller
public class SearchController {
	@Autowired
	private SearchService searchService;
	private static final ObjectMapper MAPPER = new ObjectMapper();
	
	//http://www.jt.com/search.html?q=%E4%B8%89%E6%98%9F
	@RequestMapping("search")
	public String search(String q, Integer page, Integer rows, Model model) throws Exception{
		String key = "1" ;
		if(q!=null){
			key = new String(q.getBytes("ISO-8859-1"),"utf-8");
			model.addAttribute("query", key);	//get请求的中文乱码
		}
		String jsonData = searchService.search(key, page, rows);
		JsonNode jsonNode = MAPPER.readTree(jsonData);
        JsonNode data = jsonNode.get("data").get("dataList");//获取查询数据
        JsonNode countNode = jsonNode.get("data").get("count");//获取查询个数
        Object obj = null;
        if (data.isArray() && data.size() > 0) {
            obj = MAPPER.readValue(data.traverse(),MAPPER.getTypeFactory().constructCollectionType(List.class, View_Search.class));
        }
        List<View_Search> viewList=(List<View_Search>)obj;
		Integer countNum=MAPPER.readValue(countNode.traverse(), Integer.class);
		model.addAttribute("viewList", viewList);
		model.addAttribute("count", countNum);
		
		return "/city/search";
	}
}
