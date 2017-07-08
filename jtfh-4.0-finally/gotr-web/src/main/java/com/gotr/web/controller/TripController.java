package com.gotr.web.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.gotr.dubbo.pojo.Hotel;
import com.gotr.dubbo.pojo.Trip;
import com.gotr.dubbo.pojo.View;
import com.gotr.dubbo.trip.DubboTripService;
import com.gotr.web.mapper.TripMapper;
import com.gotr.web.pojo.City;
import com.gotr.web.pojo.User;
import com.gotr.web.threadLocal.UserThreadLocal;
import com.gotr.web.tool.AddressUtils;
import com.gotr.web.tool.IPXYUtils;
import com.gotr.web.tool.InfoUtils;
import com.gotr.web.tool.ToLocationUtils;

/**
 * Created by CGB-yz on 2017/4/22.
 */
@Controller
public class TripController extends BaseController {

	@Autowired
	private TripMapper tripMapper;
	@Autowired
	private DubboTripService dubboTripService;
	private static final ObjectMapper MAPPER = new ObjectMapper();

	/**
	 * 跳到查询界面
	 */
	@RequestMapping("/toSearch")
	public String toMap(Trip trip, Model model, HttpServletRequest request, HttpSession session) {

		// 获取客户端IP
		String ip = "60.247.62.226";// request.getRemoteAddr();
		System.out.println(ip);
		try {
			// 获取行程起始城市
			String startName = AddressUtils.getAddresses("ip=" + ip, "utf-8");
			trip.setStartName(startName);
			// 将行程添加session域对象
			session.setAttribute("trip", trip);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "/search/search";
	}

	@RequestMapping("/toMap")
	public String toMap(String endName, Model model, HttpSession session) throws IOException {
		model.addAttribute("endName", endName);
		// 根据目的地查询周边景点信息
		String ViewInfo = InfoUtils.getInfo("景点", endName);
		JsonObject ViewInfoObj = new JsonParser().parse(ViewInfo).getAsJsonObject();
		View view = new Gson().fromJson(ViewInfoObj, View.class);
		// 保存城市信息
		City city = new City();
		city.setCreateTime(new Date());
		city.setName(endName);
		city.setCityId(Integer.toHexString(endName.hashCode()));
		String photoUrl = view.getPois().get(1).getPhotos().get(1).getUrl();
		city.setPhotoUrl(photoUrl);
		dubboTripService.toMap(endName);
		// 添加行程中cityId属性并添加到session域中
		Trip trip = (Trip) session.getAttribute("trip");
		String cityId = city.getCityId();

		trip.setCityId(cityId);
		session.setAttribute("trip", trip);
		model.addAttribute("trip", trip);

		// 将起始地点经纬度与终点坐标经纬度坐标存入域中
		model.addAttribute("startXY",
				IPXYUtils.getIPXY("60.247.62.226")[0] + "," + IPXYUtils.getIPXY("60.247.62.226")[1]);
		Map<String, Double> map = ToLocationUtils.getLngAndLat(endName);
		model.addAttribute("endXY", map.get("lng") + "," + map.get("lat"));
		return "/map/map";
	}

	
	@RequestMapping("/toTripView")
	public String toView(Trip trip, HttpSession session, Model model) {
		// 将trip存入session域中
		Trip tripSession = (Trip) session.getAttribute("trip");
		tripSession.setStartTime(trip.getStartTime());
		tripSession.setEndTime(trip.getEndTime());
		tripSession.setTripTime(
				(int) ((trip.getEndTime().getTime() - trip.getStartTime().getTime()) / (1000 * 60 * 60 * 24)));
		String cityId = tripSession.getCityId();
		List<View> viewList = dubboTripService.toView(cityId);
		model.addAttribute("viewList",viewList);
		return "/view/view";
	}

	@RequestMapping("/toHotel")
	public String toHotel(Model model, String[] viewId, HttpSession session) {
		// 将trip添加session域对象
		Trip trip = (Trip) session.getAttribute("trip");
		// 保存景点ID到数据库
		trip.setTripId(UUID.randomUUID().toString());
		String ViewIdString = "";
		try {
			ViewIdString = MAPPER.writeValueAsString(viewId);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		String tripId = trip.getTripId();
		User user = (User) session.getAttribute("user_session");
		String userId=UserThreadLocal.getUserId();
		trip.setUserId(userId);
		List<Hotel> hotelList = dubboTripService.toHotel(trip.getCityId(), ViewIdString);
		model.addAttribute("hotelList", hotelList);
		return "/hotel/hotel";
	}
	

	@RequestMapping("/endtrip")
	public String endtrip(HttpSession session, String hotelId, Model model) {
		Trip trip = (Trip) session.getAttribute("trip");
		String tripString = "";
		try {
			tripString = MAPPER.writeValueAsString(trip);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		User user = (User) session.getAttribute("user_session");
		String userId=UserThreadLocal.getUserId();
		List<Trip> tripList = dubboTripService.endtrip(tripString, userId, hotelId);
		model.addAttribute("tripList", tripList);
		return "forward:/WEB-INF/profile-page/viewprofile.jsp";
	}

	@RequestMapping("/findTripList")
	public String findTripList(Model model, HttpSession session) {
		// 根据用户ID查询其要去的景点图片地址,返回地址集合
		// List<String> viewPhotoUrlList=cityService.viewPhotoUrlList(userId);
		// model.addAttribute("viewPhotoUrlList",viewPhotoUrlList);
		User user = (User) session.getAttribute("user_session");
		List<Trip> tripList = tripMapper.findViewByUser(user.getUserId());
		model.addAttribute("tripList", tripList);
		// return "forward:/WEB-INF/profile-page/profile-page.jsp";
		return "forward:/WEB-INF/profile-page/viewprofile.jsp";
	}

}
