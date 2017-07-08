package com.gotr.search.service;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchRequestBuilder;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.search.SearchType;
import org.elasticsearch.client.Client;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.common.transport.InetSocketTransportAddress;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.highlight.HighlightField;
import org.springframework.stereotype.Service;

@Service
public class ViewService {

	public static Client client = null;

	public static Client getClient() throws UnknownHostException {
		if (client != null) {
			return client;
		}
		// 指定cluster.name
		Settings settings = Settings.settingsBuilder().put("cluster.name", "chenkl").build();
		// 指定主机名和端口
		Client client = TransportClient.builder().settings(settings).build()
				.addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("master"), 9300))
				.addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("slave1"), 9300))
				.addTransportAddress(new InetSocketTransportAddress(InetAddress.getByName("slave2"), 9300));
		return client;
	}

	public static Map<String, Object> search(String key, String index, String type, int start, int row)
			throws UnknownHostException {
		// 进行检索
		SearchRequestBuilder builder = getClient().prepareSearch(index);
		builder.setTypes(type);
		builder.setFrom(start);
		builder.setSize(10*row);
		// 设置高亮字段名称
		builder.addHighlightedField("view_name");
		builder.addHighlightedField("city_name");
		// 设置高亮前缀
		builder.setHighlighterPreTags("<font color='red' >");
		// 设置高亮后缀
		builder.setHighlighterPostTags("</font>");
		builder.setSearchType(SearchType.DFS_QUERY_THEN_FETCH);
		if (StringUtils.isNotBlank(key)) {
			builder.setQuery(QueryBuilders.queryStringQuery(key));
		}
		builder.setExplain(true);
		SearchResponse searchResponse = builder.get();

		SearchHits hits = searchResponse.getHits();
		long total = hits.getTotalHits();
		Map<String, Object> map = new HashMap<String, Object>();
		SearchHit[] hits2 = hits.getHits();
		map.put("count", total); // 本次查询总数
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		for (SearchHit searchHit : hits2) {
			Map<String, HighlightField> highlightFields = searchHit.getHighlightFields();
			HighlightField highlightField = highlightFields.get("view_name");
			Map<String, Object> source = searchHit.getSource();
			String images=(String) source.get("images");
			if(images!=null){
				
				
				if (highlightField != null) {
					Text[] fragments = highlightField.fragments();
					String name = "";
					for (Text text : fragments) {
						name += text;
					}
					source.put("view_name", name);
				}
				HighlightField highlightField2 = highlightFields.get("city_name");
				if (highlightField2 != null) {
					Text[] fragments = highlightField2.fragments();
					String city_name = "";
					for (Text text : fragments) {
						city_name += text;
					}
					source.put("city_name", city_name);
				}
				list.add(source);
			}
		}
		map.put("dataList", list);
		return map;
	}

}
