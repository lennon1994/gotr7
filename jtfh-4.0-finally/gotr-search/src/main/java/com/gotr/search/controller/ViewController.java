package com.gotr.search.controller;

import java.io.UnsupportedEncodingException;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gotr.common.vo.SysResult;
import com.gotr.search.service.ViewService;


@Controller
public class ViewController {
	static final Logger logger = LoggerFactory.getLogger(ViewController.class);
	@Autowired
	private ViewService viewService;
	

		@RequestMapping("/searchView/{keyWords}/{page}/{rows}")
		@ResponseBody
		public SysResult searchHotel(@PathVariable String keyWords,@PathVariable Integer page,@PathVariable Integer rows) throws UnknownHostException, UnsupportedEncodingException {
			try {
				if(keyWords=="1"){
					keyWords=null ;
				}else{					
					keyWords = new String(keyWords.getBytes("ISO-8859-1"),"utf-8");
				}
			} catch (UnsupportedEncodingException e1) {
				e1.printStackTrace();
			}
			String index = "view";
			String type = "view" ;
			int count = 0;
			Map<String,Object> search = new HashMap<String, Object>();
			try {
				search = viewService.search(keyWords,index,type,page,rows); 
				count = Integer.parseInt(((Long) search.get("count")).toString());
			} catch (Exception e) {
				logger.error("查询错误!重试!",e);
				e.printStackTrace();
			}
			List<Map<String, Object>> list = (List<Map<String, Object>>) search.get("dataList");
			
			return SysResult.oK(search);
			//return SysResult.oK(list);
		}
}
