package com.gotr.dubbo.trip;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

import com.alibaba.dubbo.rpc.protocol.rest.support.ContentType;
import com.gotr.dubbo.pojo.Hotel;
import com.gotr.dubbo.pojo.Trip;
import com.gotr.dubbo.pojo.View;

@Path("")
@Consumes({MediaType.APPLICATION_JSON, MediaType.TEXT_XML})
@Produces({ContentType.APPLICATION_JSON_UTF_8, ContentType.TEXT_XML_UTF_8})
public interface DubboTripService {

	/**
	 * 查询地图
	 */
	@GET
	@Path("toMap")
	public void toMap(@QueryParam(value="endName") String endName);

	/**
	 * 浏览酒店和景点
	 */
	@POST
	@Path("toView")
	public List<View> toView(@QueryParam(value="cityId") String cityId);

	/**
	 * 查询酒店
	 */
	@POST
	@Path("toHotel")
	public List<Hotel> toHotel(@QueryParam(value = "cityId") String cityId,
			@QueryParam(value = "ViewIdString") String ViewIdString);

	/**
	 * 旅行查询结束
	 */
	@POST
	@Path("endtrip")
	public List<Trip> endtrip(@QueryParam(value = "tripString") String tripString,
			@QueryParam(value = "userId") String userId, 
			@QueryParam(value = "hotelId") String hotelId);
}
