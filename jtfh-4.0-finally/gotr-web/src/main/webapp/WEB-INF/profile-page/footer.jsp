<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cts" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>首页</title>
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Custom Theme files -->
	<link href="/css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="/css/style.css" type="text/css" rel="stylesheet" media="all">
	<!-- <link rel="stylesheet" href="/css/flexslider.css" type="text/css" media="screen" /> -->
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

	<!-- <script src="/js/jquery.min.js"></script> -->
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
	<script src="/js/menu_jquery.js"></script>
	<!--//pop-up-->
	<style>
		html {
			box-sizing: border-box;
			font-family: 'Open Sans', sans-serif;
		}
		/* navigation styles - BEGIN */

		/* style for horizontal nav */

		/*
        style for vertical nav
        #navigation_vert {width:820px; clear:both;}
        #navigation_vert  ul {height:50px; display:block}
        #navigation_vert  ul li {display:block; width:200px; height:50px; background:#999;}
        #navigation_vert  ul li a.navlink {display:block; *display:inline-block; width:200px; height:30px; padding: 20px 0 0 0; text-align:center; color:#fff; text-decoration:none}
         */
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


<!-- //footer -->
<div class="footer" style="background:url(/images/background1_2.jpg) no-repeat!important">
	<!-- container -->
	<div class="container">
		<div class="footer-top-grids">
			<div class="footer-grids">
				<div class="col-md-3 footer-grid">
					<h4>合作网站</h4>
					<ul>
						<li><a href="index.html">百度度</a></li>
						<li><a href="flights-hotels.html">阿里里</a></li>
						<li><a href="index.html">腾讯讯</a></li>
						<li><a href="hotels.html">网易易</a></li>

					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>快速入口</h4>
					<ul>
						<li><a href="about.html">酒店查询</a></li>
						<li><a href="faqs.html">景点查询</a></li>
						<li><a href="terms.html">旅游商城</a></li>
						<li><a href="privacy.html">热门客栈</a></li>

					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>攻略指南</h4>
					<ul>
						<li><a href="holidays.html">攻略社区</a></li>
						<li><a href="weekend.html">旅游攻略</a></li>
						<li><a href="index.html">结伴出游</a></li>
						<li><a href="index.html">旅游咨询</a></li>

					</ul>
				</div>
				<div class="col-md-3 footer-grid">
					<h4>关于GoTravel</h4>
					<ul class="chf_footer_list">
						<li><a href="#">常见问题</a></li>
						<li><a href="#">联系我们</a></li>
						<li><a href="#">安全中心</a></li>
						<li><a href="#">营业执照</a></li>

					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!-- news-letter -->

			<!-- //news-letter -->
		</div>
	</div>
	<!-- //container -->
</div>
<!-- //footer -->
<div class="footer-bottom-grids">
	<!-- container -->
	<div class="container">
		<div class="footer-bottom-top-grids">
			<div class="col-md-4 footer-bottom-left">
				<h4>下载app</h4>
				<div class="d-apps">
					<ul>
						<li><a href="#"><img src="images/app1.png" alt="" /></a></li>
						<li><a href="#"><img src="images/app2.png" alt="" /></a></a></li>
						<li><a href="#"><img src="images/app3.png" alt="" /></a></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 footer-bottom-left">
				<h4>We Accept</h4>
				<div class="a-cards">
					<ul>
						<li><a href="#"><img src="images/c1.png" alt="" /></a></li>
						<li><a href="#"><img src="images/c2.png" alt="" /></a></li>
						<li><a href="#"><img src="images/c3.png" alt="" /></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-4 footer-bottom-left">
				<h4>加入我们</h4>
				<div class="social">
					<ul>
						<li><a href="#" class="facebook"> </a></li>
						<li><a href="#" class="facebook twitter"> </a></li>
						<li><a href="#" class="facebook chrome"> </a></li>
						<li><a href="#" class="facebook dribbble"> </a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"> </div>
			<div class="copyright">
				<p>Copyright &copy; 2017-2020.Company name All rights reserved.<a target="_blank" href="">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
			</div>
		</div>
	</div>
</div>
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
<!-- <script type="text/javascript">
    $(function(){
        SyntaxHighlighter.all();
        });
        $(window).load(function(){
        $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
        $('body').removeClass('loading');
        }
        });
    });
</script>	 -->

</body>
</html>
