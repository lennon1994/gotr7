<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<title>行程页面</title>
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
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- //fonts -->
<script type="text/javascript">
	$(document).ready(function () {
				 $('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
</script>

	<script>
	$(document).ready(function(){
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
	left:200px !important;
	position:absolute;
	padding:20px;
	border-bottom-right-radius:10px;
	border-top-right-radius:10px;
	-moz-border-radius-bottomright:10px;
	-moz-border-radius-topright:10px}
 	/* style for each drop down - vertical */
	#navigation_vert ul li #dropdown_four {background:#333; color:#fff}
	#navigation_vert ul li #dropdown_four a {color:red}
	#navigation_vert ul li #dropdown_five {background:#666; color:#fff}
	#navigation_vert ul li #dropdown_five a {color:black}
	#navigation_vert ul li #dropdown_six {background:#777; color:#fff}
	#navigation_vert ul li #dropdown_six a {color:orange}
	/* navigation styles - END */
</style>
</head>
<body >
<%--<jsp:include page="../view/header.jsp"></jsp:include>--%>
<%@include file="header.jsp"%>
	<!-- banner-bottom -->
	<div class="banner-bottom" style="background:url(/images/background1_1.jpg) repeat!important">
		<!-- container -->
		<div class="container" style="background-color:#ffffff ">
			<div class="faqs-top-grids">
				<div class="product-grids">
					<div class="col-md-12 product-right">
						<div class="row ">
							<c:forEach items="${tripList}" var="t">
								<div class="col-md-12" style="border: 1px solid darkgray;padding: 5px 20px;margin: 10px;">
									<span style=" width:600px!important;font-size:16px; color:black!important; font-weight: bold">出发城市： </span><span style="font-size:16px">${t.startName}</span>  &nbsp;&nbsp;&nbsp;&nbsp;
									<span style="width:600px!important;font-size:16px;  color:black!important; font-weight: bold">目的城市： </span><span style="font-size:16px">${t.endName}</span><br/><br/>
									<span style="width:600px!important;font-size:16px ; color:black!important; font-weight: bold">出发时间： </span><span style="font-size:16px"><fmt:formatDate value="${t.startTime}" pattern="yyyy-MM-dd"/></span> &nbsp;&nbsp;&nbsp;&nbsp;
									<span style="width:600px!important;font-size:16px; color:black!important; font-weight: bold">结束时间： </span><span style="font-size:16px"><fmt:formatDate value="${t.endTime}" pattern="yyyy-MM-dd"/></span><br/><br/>
									<span style="font-size:16px; color:black!important; font-weight: bold">游玩天数： </span><span style="font-size:16px">${t.tripTime}</span> &nbsp;&nbsp;&nbsp;&nbsp;
									<span style="font-size:16px; color:black!important; font-weight: bold">酒店名称： </span><span style="font-size:16px">${t.hotel.name}</span><br/><br/>
									<span style="font-size:16px; color:black!important; font-weight: bold">酒店地址： </span><span style="font-size:16px">${t.hotel.address}</span> &nbsp;&nbsp;&nbsp;&nbsp;
									<span style="font-size:16px; color:black!important; font-weight: bold">酒店类型： </span><span style="font-size:16px">${t.hotel.type}</span><br/><br/>
									<span style="font-size:16px; color:black!important; font-weight: bold">酒店方位： </span><span style="font-size:16px">${t.hotel.location}</span> <br/>
									<c:forEach items="${t.viewList}" var="v" varStatus="s">
										<span style="font-size:16px; color:black!important; font-weight: bold">景点名称： </span><span style="font-size:16px">${v.name}</span><br/><br/>
										<span style="font-size:16px; color:black!important; font-weight: bold">景点类型： </span><span style="font-size:16px">${v.type}</span> &nbsp;&nbsp;&nbsp;&nbsp;
										<span style="font-size:16px; color:black!important; font-weight: bold">景点地址： </span><span style="font-size:16px">${v.address}</span><br/><br/>
										<span style="font-size:16px; color:black!important; font-weight: bold">景点方位： </span><span style="font-size:16px">${v.location}</span> &nbsp;&nbsp;&nbsp;&nbsp;
									</c:forEach>
								</div>
							</c:forEach>
						</div>
					<div class="clearfix"> </div>
				</div>
	           </div>
			</div>
		</div>
		<!-- //container -->
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
	
<%--<jsp:include page="../view/footer.jsp"></jsp:include>--%>
<%@include file="footer.jsp"%>
</body>
</html>
