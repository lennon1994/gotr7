
<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cts" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=1024">
<meta http-equiv="Cache-Control" content="no-siteapp " />
<meta name="location"
	content="province=上海;city=上海;coord=121.497200965648,31.2434534387672">
<meta name="mobile-agent"
	content="format=html5;url=http://m.ctrip.com/html5/you/sight/Shanghai2/736.html" />
<title>景点展现</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="上海外滩,上海外滩门票,外滩攻略,外滩地址,外滩图片,外滩门票价格" />
<meta name="description"
	content="外滩攻略，携程攻略社区! 提供上海外滩门票价格及查询服务，包含上海外滩攻略、地址、图片、点评、附近酒店、门票团购等实用信息，大量外滩团购优惠及返现活动。要旅行，从携程攻略开始。" />
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="http://m.ctrip.com/html5/you/sight/Shanghai2/736.html">
<link rel="canonical"
	href="http://you.ctrip.com/sight/shanghai2/736.html" />
<link charset="utf-8" type="text/css" rel="stylesheet"
	href="http://webresource.c-ctrip.com/resgswebonline/R1/common/css/common.v2.0.css?t=20170526154317" />
<link charset="utf-8" type="text/css" rel="stylesheet"
	href="http://webresource.c-ctrip.com/resgswebonline/R1/fed/css/fed.v2.0.css?t=20170526154317" />

<link charset="utf-8" type="text/css" rel="stylesheet"
	href="http://webresource.c-ctrip.com/resgswebonline/R1/ttd2/css/sight_detail.v2.0.css?t=20170526154317" />

</head>
<body>
	<jsp:include page="header.jsp" />
	<script type="text/javascript">
		var getHeadOtherInfo = function() {
			$.ajax({
				url : '/Destinationsite/Shared/GetHeadeOtherInfo',
				type : "POST",
				async : true,
				data : {},
				datatype : "json",
				success : function(responseText) {
					if (responseText.IsMerchantUser) {
						$('#gs_head_myhomepage a').text('商家主页');
					}
					$('#gs_head_myhomepage a').attr('href',
							responseText.MySiteUrl);
					if (responseText.ShowUserMsgCount != "") {
						//var msg = "<span class=\"tipsbox_outer\"><a href=\"/members/message/receivelist.aspx\" class=\"gstips_supcount\" title=\"消息(" + responseText.ShowUserMsgCount + ")\" rel=\"nofollow\">" + responseText.ShowUserMsgCount + "</a></span>";
						var msg = "<span class=\"tipsbox_outer\">"
								+ responseText.ShowUserMsgCount + "</span>";
						$('#gs_head_myhomepage').append(msg);
					}
				},
				error : function() {

				}
			});
		};
		var asynfunc = window.asynfunc || [];
		asynfunc.push(getHeadOtherInfo);
	</script>




	<!--二级导航-->
	<script type="text/javascript">
		var INTERFACE = window.INTERFACE || {};
		/*
		 *想去的后台请求方法
		 * param == 1时表示“想去” param == -1 表示“取消想去”
		 */
		INTERFACE.wantRequestFn = function(param) {
			ClickWant();
		};
		/**
		 *去过的后台请求方法
		 * param == 1时表示“想去” param == -1 表示“取消想去”
		 */
		INTERFACE.beenRequestFn = function(param) {
			ClickWent();
		};
	</script>

	<div class="ttd2_background">
		<div class="content cf dest_details" style="margin: 0px auto;">
			<div class="des_wide f_left" style="margin-left: 151px;">
				<div class="detailtop cf normalbox">

					<!--轮播效果-统一为线上首页渐隐展现形式-->
					<div class="carousel " id="detailCarousel">
						<div class="carousel-inner">
							<div class="item active">
								<a href="/photos/sight/shanghai2/r736-108350757.html"
									target="_blank"> <img width="350" height="230"
									src="https://dimg06.c-ctrip.com/images/100k0c00000062prlF2D5_C_350_230.jpg" />
								</a>
							</div>
							<div class="item ">
								<a href="/photos/sight/shanghai2/r736-44855119.html"
									target="_blank"> <img width="350" height="230"
									src="https://dimg08.c-ctrip.com/images/fd/tg/g2/M02/AE/B7/Cghzf1WnQzqAUYrKACigWhppfsA528_C_350_230.jpg" />
								</a>
							</div>
							<div class="item ">
								<a href="/photos/sight/shanghai2/r736-27275164.html"
									target="_blank"> <img width="350" height="230"
									src="https://dimg05.c-ctrip.com/images/fd/tg/g1/M00/C9/E0/CghzflWw0WyASSerAChsa1NFfh4885_C_350_230.jpg" />
								</a>
							</div>
							<div class="item ">
								<a href="/photos/sight/shanghai2/r736-28480259.html"
									target="_blank"> <img width="350" height="230"
									src="https://dimg09.c-ctrip.com/images/fd/tg/g1/M02/7A/DB/CghzfFWwsWiAWarYABdhpT54eRM674_C_350_230.jpg" />
								</a>
							</div>
							<div class="item ">
								<a href="/photos/sight/shanghai2/r736-108349518.html"
									target="_blank"> <img width="350" height="230"
									src="https://dimg07.c-ctrip.com/images/100t0c00000062rn95203_C_350_230.jpg" />
								</a>
							</div>
						</div>
						<i class="picdiscover"></i>
						<ol class="carousel-indicators">
							<li data-target="#detailCarousel" data-slide-to="0"
								class="active"></li>
							<li data-target="#detailCarousel" data-slide-to="1" class=""></li>
							<li data-target="#detailCarousel" data-slide-to="2" class=""></li>
							<li data-target="#detailCarousel" data-slide-to="3" class=""></li>
							<li data-target="#detailCarousel" data-slide-to="4" class=""></li>
						</ol>
						<a target="_blank" href="/photos/sight/shanghai2/r736.html"
							class="r_text"></a>
					</div>
					
					<ul class="detailtop_r_info">
						<li><span class="score"><b>${viewInfo.score}</b>分</span></li>
						<li class="infotext">${viewInfo.view_name}</li>
						<li class="infotext">${viewInfo.address}</li>
						<li class="infotext">类型：${viewInfo.type}</li>
					</ul>
				</div>
				<!-- <div class="detailfixdtab_box" id="jieshao" name="jieshao">
					<div class="detailfixdtab">
						<ul>
							<li class=current><h2>
									<a href="/sight/shanghai2/736.html#jieshao">简介与点评</a>
								</h2></li>
							<li><h2>
									<a href="/sight/shanghai2/736-sight.html#jingdian">周边景点</a>
								</h2></li>
							<li><h2>
									<a href="/sight/shanghai2/736-tuan.html#tuangou">周边团购</a>
								</h2></li>
							<li><h2>
									<a href="/sight/shanghai2/736-traffic.html#jiaotong">交通</a>
								</h2></li>
						</ul>
					</div>
				</div> -->
				<div class="normalbox boxsight_v1">
					<div class="detailcon bright_spot">
						<span class="subscript"></span>
					</div>
					<!--概览-->
					<div class="detailcon detailbox_dashed">
						<h2>
							景点介绍<a id="jieshao"></a>
						</h2>
						<div class="toggle_s" style="display: block;">
							<div itemprop="description" class="text_style">${viewInfo.intro}</div>
						</div>
					</div>
				</div>
				<br/><br/><br/>
				
	<!-- 			<script type="text/javascript">
					var poiid = "75611";
					var GoWeiboCommentPage = function(p) {
						$
								.ajax({
									url : '/destinationsite/TTDSecond/SharedView/WeiboCommentListView',
									type : 'post',
									async : true,
									data : {
										'poiid' : poiid,
										'page' : p
									},
									success : function(responseText) {
										if (responseText != "false"
												&& responseText.length > 0) {
											$("#weiboCom2").html(responseText);
											var count = $("#weibocommentcount")
													.val();
											if (Number(count) > 4) {
												$("#weibocommentcounttext")
														.html(count);
												$(
														"#weiboComment ul .weibocommenthidden")
														.show();
												$.pageEventBind();
											}
										}
									},
									error : function() {
									}
								});
					};
					//搜索
					var resourceid = "736";
					var resourcetype = "2";
					var districtid = "2";
					var districtename = "Shanghai";
					var star = "0.0";
					var tourist = "0.0";
					var order = "3.0";
					var poiid = "75611";
					var pagenow = "1";
					var usefulDataId = "";
					function GetCommentListHtml() {
						$
								.ajax({
									url : '/destinationsite/TTDSecond/SharedView/AsynCommentView',
									type : 'post',
									async : true,
									data : {
										'poiID' : poiid,
										'districtId' : districtid,
										'districtEName' : districtename,
										'pagenow' : pagenow,
										'order' : order,
										'star' : star,
										'tourist' : tourist,
										'resourceId' : resourceid,
										'resourcetype' : resourcetype
									},
									success : function(responseText) {
										if (responseText != "false"
												&& responseText.length > 0) {
											var comment_ctrip = $(responseText)
													.children(".comment_ctrip");
											if (comment_ctrip
													&& comment_ctrip.length > 0) {
												$('#sightcommentbox').html(
														comment_ctrip.html());
												$imitateSelect('#selectSort');
												$('.comment_single')
														.hover(
																function() {
																	$(this)
																			.find(
																					'.gsn_btn_report')
																			.show();
																	$(this)
																			.find(
																					'.gsn_btn_detail')
																			.show();
																},
																function() {
																	$(this)
																			.find(
																					'.gsn_btn_report')
																			.hide();
																	$(this)
																			.find(
																					'.gsn_btn_detail')
																			.hide();
																});
												$.pageEventBind();
												pagechangeevent();
											}
										}
									},
									error : function() {
									}
								});
					}
					function pagechangeevent() {
						usefulBind();
						$(".comment_ctrip .useful a")
								.click(
										function() {
											var commentid = $(this).attr(
													"data-id");
											usefulDataId = commentid;
											if (commentid > 0) {
												$
														.ajax({
															url : "/destinationsite/Comment/SetUserful",
															type : "post",
															async : true,
															data : {
																"commentid" : commentid
															},
															dataType : "json",
															success : function(
																	responseText) {
																var obj = eval(responseText);
																if (obj != null
																		&& obj.length > 0
																		&& obj[0].RetCode == "1") {
																	$(this)
																			.attr(
																					"data-clicked",
																					"true");
																}
															},
															error : function() {
															}
														});
											}
										});
					}

					function SearchComment() {
						$("#sightcommentbox")
								.html(
										"<div class=\"gs_list_load\" ><div class=\"gs_loading_gay\"></div></div>");
						GetCommentListHtml();
						CommentFsl();
						return;
					}
					function eventbinding() {
						//星级搜索
						$(".comment_wrap .tablist a").click(
								function() {
									var dataid = $(this).attr("data-id");
									star = dataid;
									pagenow = 1;
									SearchComment();
									$(".comment_wrap .tablist .current")
											.removeClass("current");
									$(this).parent('li').addClass("current");
								});
						//
						$(".comment_ctrip .useful a")
								.click(
										function() {
											var commentid = $(this).attr(
													"data-id");
											usefulDataId = commentid;
											if (commentid > 0) {
												$
														.ajax({
															url : "/destinationsite/Comment/SetUserful",
															type : "post",
															async : true,
															data : {
																"commentid" : commentid
															},
															dataType : "json",
															success : function(
																	responseText) {
																var obj = eval(responseText);
																if (obj != null
																		&& obj.length > 0
																		&& obj[0].RetCode == "1") {
																	$(this)
																			.attr(
																					"data-clicked",
																					"true");
																}
															},
															error : function() {
															}
														});
											}
										});
						//
						$(".comment_wrap .write_recomment")
								.click(
										function() {
											var poiid = $(this).attr("data-id");
											if (poiid > 0) {
												$
														.ajax({
															url : "/destinationsite/Comment/IsCommentPoi",
															type : "post",
															async : true,
															data : {
																"poiid" : poiid
															},
															dataType : "json",
															success : function(
																	responseText) {
																var obj = eval(responseText);
																if (obj != null) {
																	var ms = "很抱歉，你最近于"
																			+ obj.LastCommentTime
																			+ "对<a href=\"" + obj.PoiUrl + "\">"
																			+ obj.Name
																			+ "</a>提交过点评，在三个月内无法再次对它发表新点评";

																	$(
																			"#commentRule dl dd")
																			.eq(
																					0)
																			.html(
																					ms);
																	$(
																			"#commentRule p a")
																			.eq(
																					1)
																			.attr(
																					"data-url",
																					obj.PoiUrl
																							+ "#comment");

																	cannotComment();
																} else {
																	var url = $(
																			".write_recomment")
																			.attr(
																					"data-src");
																	window.location.href = url;
																}
															},
															error : function() {
															}
														});
											}
										});
						var a = $(".comment_wrap .cate_count");
						a.find("li").click(function() {
							a.find(".current").removeClass("current");
							$(this).addClass("current");
							INTERFACE.removeReviewType($(this), "on");
							return !1;
						});
						a.find("li s").click(
								function() {
									INTERFACE.removeReviewType($(this).parent()
											.parent(), "off");
									$(this).parent().parent().removeClass(
											"current");
									return !1;
								});
					}

					function pagecomment() {
						$.popupbox.close();
						//location.hash="comment";
						var url = $("#commentRule p a").eq(1).attr("data-url");
						if (url != "") {
							window.location.href = url;
						}
					}
					function GoCommentPage(val) {
						pagenow = val;
						SearchComment();
						$("html,body").animate({
							scrollTop : $("#sightcommentbox1").offset().top
						}, 1000);
					}
					//排序
					function orderBy(o) {
						order = o;
						pagenow = 1;
						SearchComment();
					}
					//有用、写点评
					function CommentFsl() {
						usefulBind();
					}
					//提示不可以点评的方法
					var cannotComment = function() {
						$.popupbox.show({
							id : 'commentRule',
							callback : function() {
							}
						});
					};
					//有用状态设置
					function usefulBind() {
						var commentids = "";
						$(".comment_ctrip .useful a[data-id]").each(function() {
							var commentid = $(this).attr("data-id");
							commentids = commentids + "," + commentid;
						});
						if (commentids != "") {
							$
									.ajax({
										url : '/destinationsite/Comment/UserfulBind',
										type : "post",
										async : true,
										data : {
											"commentids" : commentids
										},
										dataType : "json",
										success : function(responseText) {
											if (responseText
													&& responseText.length > 0) {
												$
														.each(
																responseText,
																function(i,
																		item) {
																	if (item
																			&& item.key != "") {
																		$(
																				".comment_ctrip .useful a[data-id="
																						+ item.commentid
																						+ "]")
																				.attr(
																						"data-clicked",
																						item.isUserful);
																		if (item.isUserful) {
																			$(
																					".comment_ctrip .useful a[data-id="
																							+ item.commentid
																							+ "]")
																					.attr(
																							"class",
																							"gray");
																		}
																	}
																});
											}
										},
										error : function() {

										}
									});
						}
					}
					var asynfunc = window.asynfunc || [];
					asynfunc.push(eventbinding);
					asynfunc.push(function() {
						GoWeiboCommentPage(1);
					});
				</script>
		 -->
		
		<jsp:include page="footer.jsp" />
</body>
</html>
