<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>景点展现</title>
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
<link type="text/css" rel="stylesheet" href="/css/JFFormStyle-1.css" />

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
<script src="/js/menu_jquery.js"></script>
<!--//pop-up-->
<style>
/* html {
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
} */

/* navigation styles - END */
</style>


</head>
<body>
	<!--//header-->
	<jsp:include page="header.jsp" />
	
	<!-- banner-bottom -->
	<div class="banner-bottom" style="background: url(/images/background1_1.jpg) no-repeat !important">
		<!-- container -->
		<div class="container" style="background-color: #ffffff">
			<br />
			<div style="width:80%;margin: 0px auto">
				<!-- <div class="about-grids"> -->
				<div >
					<!-- <div class="col-md-4 about-right"> -->
					<div width="350px" style="float:left">
						<img src="${viewInfo.image}" alt="" width="340px" height="220px" />
					</div>
					<!-- <div class="col-md-8 about-left"> -->
					<div width="436px" style="float:left;margin: 0px 10px">
						<!-- <div class="about-info"> -->
						<div >
							<h2>${viewInfo.view_name}</h2>
						</div>
						<br />
						<h4>${viewInfo.address}</h4>
						<br />
						<h4>评分：${viewInfo.score}</h4>
						<br />
						<h4>类型：${viewInfo.type}</h4>
					</div>
					<div class="clearfix"></div>
				</div>
				<br />
				<div>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;${viewInfo.intro}</p>
				</div>
				<br />
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


	<jsp:include page="footer.jsp" />
</body>
</html>










