<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>酒店长条页面</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- //Custom Theme files -->
<link href="/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="/css/style.css" type="text/css" rel="stylesheet" media="all">
<!-- <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> -->
<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />

<link href="/css/main-page_eabd6a2e.css" type="text/css" rel="stylesheet" media="all">
<link href="/pg/pgwslider.css" type="text/css" rel="stylesheet" media="all">


<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<link rel="stylesheet" href="/css/animate.min.css">
<link rel="stylesheet" href="/css/templatemo-style.css">

<link href="/pg/pgwslider.min.css" type="text/css" rel="stylesheet" media="all">
<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>

<!-- js -->
<script src="/pg/pgwslider.js"></script>
<script src="/pg/pgwslider.min.js"></script>

<!-- <script src="js/jquery.min.js"></script> -->
<script src="/js/modernizr.custom.js"></script>

<script type="text/javascript" src="/js/jquery-hengdh/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/js/jquery-hengdh/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript" src="/js/jquery-hengdh/jquery.naviDropDown.1.0.js"></script>

<!-- //js -->
<!-- fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- //fonts -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion
			width : 'auto', //auto or any width like 600px
			fit : true
		});
	});
</script>

<script>
	$(document).ready(function() {
		$(document).ready(function() {
			$('.pgwSlider').pgwSlider();
		});
	});
</script>
<!--pop-up-->
<script src="js/menu_jquery.js"></script>
<!--//pop-up-->

<style>
html {
	box-sizing: border-box;
	font-family: 'Open Sans', sans-serif;
}

#navigation_vert .dropdown {
	left: 200px !important;
	position: absolute;
	padding: 20px;
	border-bottom-right-radius: 10px;
	border-top-right-radius: 10px;
	-moz-border-radius-bottomright: 10px;
	-moz-border-radius-topright: 10px
}

/* style for each drop down - vertical */
#navigation_vert ul li #dropdown_four {
	background: #333;
	color: #fff
}

#navigation_vert ul li #dropdown_four a {
	color: red
}

#navigation_vert ul li #dropdown_five {
	background: #666;
	color: #fff
}

#navigation_vert ul li #dropdown_five a {
	color: black
}

#navigation_vert ul li #dropdown_six {
	background: #777;
	color: #fff
}

#navigation_vert ul li #dropdown_six a {
	color: orange
}

/* navigation styles - END */
</style>


</head>
<body>
	<%@ include file="header.jsp" %>
	<!-- banner-bottom -->
	<div class="banner-bottom"
		style="background: url(/images/background1_1.jpg) no-repeat !important">
		<!-- container -->
		<div class="container" style="background-color: #ffffff">
			<div class="faqs-top-grids">
				<div class="product-grids">
					<div class="col-md-3 product-left" style="height: 100% !important;">
						<div class="h-class">
							<h5>景点等级</h5>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="starTextLabel">5 Stars (18)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"
									checked="checked" data-track="HOT:SR:StarRating:5Star">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<span class="starTextLabel">4 Stars (30)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="starTextLabel">3 Stars (106)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="starTextLabel">2 Stars (78)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="glyphicon glyphicon-star" aria-hidden="true"></span> <span
									class="starTextLabel">1 Stars (10)</span>
								</label>
							</div>
						</div>
						<div class="h-class p-day">
							<h5>人均消费</h5>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"
									checked="checked" data-track="HOT:SR:StarRating:5Star">
									<span class="p-day-grid">小于 100 (76)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="p-day-grid">100 to 200 (132)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="p-day-grid">200 to 300 (223)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="p-day-grid">300 to 400 (84)</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="checkbox"> <span
									class="p-day-grid">500 + (23)</span>
								</label>
							</div>
						</div>
						<div class="h-class">
							<h5>类型</h5>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" checked="checked" data-track="HOT:SR:Area">
									<span class="p-day-grid">城市休闲</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">游山玩水</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">温泉</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">假日</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">亲子</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">清肺之旅</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">古镇</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">博物馆</span>
								</label>
							</div>
							<div class="hotel-price">
								<label class="check"> <input type="radio"
									name="hideRegionId" data-track="HOT:SR:Area"> <span
									class="p-day-grid">看日出</span>
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-9 product-right">
						<form action="/toHotel.action" method="post" target="">
							<input type="submit" class="submit action-button" value="Submit" />
							<c:forEach items="${viewList}" var="v">
								<div class="product-right-grids">
									<div class="product-right-top">
										<div class="p-left">
											<div class="p-right-img">
												<c:forEach items="${v.pois}" var="p">
													<a href=""
														style="  background: url(${p.location}) no-repeat 0px 0px;">
													</a>
												</c:forEach>
											</div>
										</div>
										<div class="p-right">
											<div class="col-md-6 p-right-left">
												<a href="p-single.html">景点名称：${v.name}</a>
												<div class="p-right-price">
													<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
													<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
												</div>
												<p>景点类型：${v.type}</p>
												<p class="p-call">${v.address}</p>
											</div>
											<div class="col-md-6 p-right-right">
												<h6>Rating : 4.1/5</h6>
												<p>(123) Views</p>
												添加到行程<input type="checkbox" value="${v.viewId}" name="viewId">
											</div>
											<div class="clearfix"></div>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
							</c:forEach>
						</form>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!-- //container -->
		<%@ include file="footer.jsp" %>
	</div>
	<!-- //banner-bottom -->
	<script defer src="/js/jquery.flexslider.js"></script>
	<script src="/js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script src="/js/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/script.js"></script>
	<script src="/js/jquery.simple-text-rotator.js"></script>
	<script src="/js/smoothscroll.js"></script>
	<script src="/js/wow.min.js"></script>
	<script src="/js/jquery.flexslider.js"></script>
	<script src="/js/templatemo-script.js"></script>
	<!-- end javascript -->
</body>
</html>
