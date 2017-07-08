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
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<!-- <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" /> -->
	<link type="text/css" rel="stylesheet" href="css/JFFormStyle-1.css" />

	<link href="css/main-page_eabd6a2e.css" type="text/css" rel="stylesheet" media="all">
	<link href="pg/pgwslider.css" type="text/css" rel="stylesheet" media="all">


	<link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/templatemo-style.css">

	<link href="pg/pgwslider.min.css" type="text/css" rel="stylesheet" media="all">
	<script src="http://www.jq22.com/jquery/1.11.1/jquery.min.js"></script>

	<!-- js -->
	<script src="pg/pgwslider.js"></script>
	<script src="pg/pgwslider.min.js"></script>

	<!-- <script src="js/jquery.min.js"></script> -->
	<script src="js/modernizr.custom.js"></script>

	<script type="text/javascript" src="js/jquery-hengdh/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery-hengdh/jquery.hoverIntent.minified.js"></script>
	<script type="text/javascript" src="js/jquery-hengdh/jquery.naviDropDown.1.0.js"></script>

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
<!--header-->
<%@include file="header.jsp"%>


<!--//header-->



<section id="home" class="text-center" style="padding:0px !important">
	<div class="templatemo_headerimage">
		<div class="flexslider">
			<ul class="slides">
				<li>
					<img src="images/slider/1.jpg" alt="Slide 1">
					<div class="slider-caption">
						<div class="templatemo_homewrapper">
							<h1 class="wow fadeInDown" data-wow-delay="2000">嗨！你有多久没有呼吸到新鲜空气了</h1>
							<h2 class="wow fadeInDown" data-wow-delay="2000">
							<span class="rotate"><span class="rotate">解除平时的全副武装，全身心的去感受大自然，看一下久违的蓝天白云。</span>
, 你还记得现在是春天吗？</span>
							</h2>
							<p>快来开启你的自定义旅行吧</p>
							<a href="#work" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">GOGOGO</a>
						</div>
					</div>
				</li>
				<li>
					<img src="images/slider/2.jpg" alt="Slide 2">
					<div class="slider-caption">
						<div class="templatemo_homewrapper">
							<h1 class="wow fadeInDown" data-wow-delay="2000">喂！你还向往国外的沙石海岛吗？</h1>
							<h2 class="wow fadeInDown" data-wow-delay="2000">
								<span class="rotate">带上你最爱的人, 一起出发吧</span>
							</h2>
							<p>继续等待的话，你最爱的人还是你的人吗？</p>
							<a href="#about" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">gogogo</a>
						</div>
					</div>
				</li>
				<li>
					<img src="images/slider/3.jpg" alt="Slide 3">
					<div class="slider-caption">
						<div class="templatemo_homewrapper">
							<h1 class="wow fadeInDown" data-wow-delay="2000">呦呦呦，还没去过天安门呢</h1>
							<h2 class="wow fadeInDown" data-wow-delay="2000">
								<span class="rotate">其实, 我, 也, 没去过</span>
							</h2>
							<p>前端文案去取外卖了，我是他女朋友</p>
							<a href="#service" class="smoothScroll btn btn-default wow fadeInDown" data-wow-delay="2000">游记</a>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
</section>



<!-- banner -->
<div class="banner">



</div>



<!-- 图片展示-->

<div class="container">




</div>
<!-- banner-bottom -->
<div class="banner-bottom" >
	<!-- container -->
	<div class="container">
		<div class="banner-bottom-info">
			<h3>最新信息</h3>
		</div>
		<div class="banner-bottom-grids">
			<div class="col-md-4 banner-bottom-grid">
				<div class="destinations">
					<ul>
						<li class="button"><a href="#">中南海宾馆</a>
						<li class="dropdown active">
							<a href="products.html">
								<div class="destinations-grid">
									<img src="images/a1.jpg" alt="" />
								</div>
								<div class="destinations-grid-info">
									<div class="destinations-hotel">100块都不给我</div>
									<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
									<div class="destinations-price">$100</div>
									<div class="clearfix"> </div>
								</div>
							</a>
						</li>
						</li>
						<li class="button"><a href="#">如家</a>
						<li class="dropdown">
							<a href="products.html">
								<div class="destinations-grid">
									<img src="images/a4.jpg" alt="" />
								</div>
								<div class="destinations-grid-info">
									<div class="destinations-hotel">像家一样</div>
									<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
									<div class="destinations-price">$100</div>
									<div class="clearfix"> </div>
								</div>
							</a>
						</li>
						</li>
						<li class="button"><a href="#">汉庭</a>
						<li class="dropdown">
							<a href="products">
								<div class="destinations-grid">
									<img src="images/a3.jpg" alt="" />
								</div>
								<div class="destinations-grid-info">
									<div class="destinations-hotel">需要特殊服务吗？来，翻个身</div>
									<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
									<div class="destinations-price">$240</div>
									<div class="clearfix"> </div>
								</div>
							</a>
						</li>
						</li>
						<li class="button"><a href="#">速8</a>
						<li class="dropdown">
							<a href="products.html">
								<div class="destinations-grid">
									<img src="images/a1.jpg" alt="" />
								</div>
								<div class="destinations-grid-info">
									<div class="destinations-hotel">我看过，我看过，都是光头</div>
									<div class="destinations-star"><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span><span class="glyphicon glyphicon-star" aria-hidden="true"></span></div>
									<div class="destinations-price">$320</div>
									<div class="clearfix"> </div>
								</div>
							</a>
						</li>
						</li>
					</ul>
				</div>
				<div class="choose">
					<div class="choose-info">
						<h4>为什么选择GoTravell</h4>
					</div>
					<div class="choose-grids">
						<div class="choose-grids-info">
							<div class="choose-left">
								<h5>09</h5>
								<span>Million</span>
							</div>
							<div class="choose-right">
								<a href="products.html">庞大的用户群体</a>
								<p>超过900万的驴友与你同在</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="choose-grids-info">
							<div class="choose-left">
								<span class="glyphicon glyphicon-globe" aria-hidden="true"></span>
							</div>
							<div class="choose-right">
								<a href="products.html">你无法想象的数据量</a>
								<p>覆盖全球30000+城市景点信息</p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="choose-grids-info">
							<div class="choose-left">
								<h6>$</h6>
							</div>
							<div class="choose-right">
								<a href="products.html">最新实时优惠信息</a>
								<p>出游，有我就go了 </p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 banner-bottom-grid">
				<div class="banner-bottom-middle">
					<a href="products.html">
						<img src="images/a2.jpg" alt="" />
						<div class="destinations-grid-info tours">
							<h5>游记游记游记游记游记游记游记</h5>
							<p>游记游记游记游记游记游记游记</p>
							<p class="b-period">Book Period: Now - 7 September 2015 | Travel Period: Now - 31 October 2015 </p>
						</div>
					</a>
				</div>
				<div class="top-destinations-grids">
					<div class="top-destinations-info">
						<h4>热门景点</h4>
					</div>
					<div class="top-destinations-bottom">
						<div class="td-grids">
							<div class="col-xs-3 td-left">
								<img src="images/t1.jpg" alt="" />
							</div>
							<div class="col-xs-7 td-middle">
								<a href="products.html">什么什么瀑布</a>
								<p>哗哗哗哗哗哗哗哗哗哗</p>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							</div>
							<div class="col-xs-2 td-right">
								<p>504<span class="glyphicon glyphicon-thumbs-up"></span> </p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="td-grids">
							<div class="col-xs-3 td-left">
								<img src="images/t2.jpg" alt="" />
							</div>
							<div class="col-xs-7 td-middle">
								<a href="products.html">大桥</a>
								<p>什么什么大桥</p>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							</div>
							<div class="col-xs-2 td-right">
								<p>304<span class="glyphicon glyphicon-thumbs-up"></span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="td-grids">
							<div class="col-xs-3 td-left">
								<img src="images/t3.jpg" alt="" />
							</div>
							<div class="col-xs-7 td-middle">
								<a href="products.html">桂林</a>
								<p>山水甲天下</p>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							</div>
							<div class="col-xs-2 td-right">
								<p>204<span class="glyphicon glyphicon-thumbs-up"></span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="td-grids">
							<div class="col-xs-3 td-left">
								<img src="images/t4.jpg" alt="" />
							</div>
							<div class="col-xs-7 td-middle">
								<a href="products.html">海南</a>
								<p>三亚</p>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
								<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
							</div>
							<div class="col-xs-2 td-right">
								<p>104<span class="glyphicon glyphicon-thumbs-up"></span></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 banner-bottom-grid">
				<div class="banner-bottom-right">
					<a href="products.html">
						<img src="images/a3.jpg" alt="" />
						<div class="destinations-grid-info tours">
							<h5>不到长城非好汉</h5>
							<p>游记游记游记游记游记游记游记</p>
							<p class="b-period">Book Period: Now - 7 |September 2015 | Travel Period: Now - 31 October 2015 </p>
						</div>
					</a>
				</div>
				<div class="news-grids">
					<div class="news-grids-info">
						<h4>最新评论</h4>
					</div>
					<div class="news-grids-bottom">
						<!-- date -->
						<div id="design" class="date">
							<div id="cycler">
								<div class="date-text">
									<a href="single.html">Apail 27,2017</a>
									<p>评论评论</p>
								</div>
								<div class="date-text">
									<a href="single.html">Apail 27,2017</a>
									<p>评论评论</p>
								</div>
								<div class="date-text">
									<a href="single.html">Apail 27,2017</a>
									<p>评论评论</p>
								</div>
								<div class="date-text">
									<a href="single.html">Apail 27,2017</a>
									<p>评论评论</p>
								</div>
								<div class="date-text">
									<a href="single.html">Apail 27,2017</a>
									<p>评论评论</p>
								</div>
							</div>
							<script>
								function cycle($item, $cycler){
									setTimeout(cycle, 2000, $item.next(), $cycler);

									$item.slideUp(1000,function(){
										$item.appendTo($cycler).show();
									});

								}
								cycle($('#cycler div:first'),  $('#cycler'));
							</script>
						</div>
						<!-- //date -->
					</div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!-- //container -->
</div>
<!-- //banner-bottom -->
<!-- popular-grids -->
<div class="popular-grids">
	<!-- container -->
	<div class="container">
		<div class="popular-info">
			<h3>美景欣赏</h3>
		</div>
		<!-- slider -->
		<div class="slider">
			<div class="arrival-grids">
				<ul id="flexiselDemo1">
					<li>
						<a href="products.html"><img src="/images/a1.jpg" alt=""/>
						</a>
					</li>
					<li>
						<a href="products.html"><img src="/images/a2.jpg" alt=""/>
						</a>
					</li>
					<li>
						<a href="products.html"><img src="/images/a4.jpg" alt=""/>
						</a>
					</li>
					<li>
						<a href="products.html"><img src="/images/a1.jpg" alt=""/>
						</a>
					</li>
				</ul>
				<script type="text/javascript">
					$(window).load(function() {
						$("#flexiselDemo1").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,
							pauseOnHover:true,
							enableResponsiveBreakpoints: true,
							responsiveBreakpoints: {
								portrait: {
									changePoint:480,
									visibleItems: 1
								},
								landscape: {
									changePoint:640,
									visibleItems: 2
								},
								tablet: {
									changePoint:768,
									visibleItems: 3
								}
							}
						});
					});
				</script>
				<script type="text/javascript" src="/js/jquery.flexisel.js"></script>
			</div>
		</div>
		<!-- //slider -->
	</div>
	<!-- //container -->
</div>
<!-- popular-grids -->
<!-- footer -->
<%@include file="footer.jsp"%>
<!-- //footer -->

<script defer src="/js/jquery.flexslider.js"></script>
<script src="/js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="/js/jquery-ui.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script src="/js/jquery.simple-text-rotator.js"></script>
<script src="/js/smoothscroll.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/templatemo-script.js"></script>


</body>
</html>
