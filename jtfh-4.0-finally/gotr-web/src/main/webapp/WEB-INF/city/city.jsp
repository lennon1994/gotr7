<%--
  Created by IntelliJ IDEA.
  User: CGB-yz
  Date: 2017/4/24
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="cts" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<title>目的地攻略</title>
<link href="/css/page.css" rel="stylesheet" type="text/css">
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
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
	<jsp:include page="header.jsp" />
	<div class="banner-bottom"
		style="background: url(/images/background1_1.jpg) no-repeat !important">
		<!-- container -->
		<div class="container" style="background-color: #ffffff">
			<div class="banner-bottom-grids">
				<c:forEach items="${cityList}" var="c">
					<div class="col-md-4 weekend-grids">
						<div class="weekend-grid">
							<a href="toView.action?cityId=${c.cityId}"> <img
								src="${c.photoUrl}" alt="" width="600px" height="200px" />
								<div class="deals-info-grid">
									<div class="deals-grids">
										<div class="col-md-8 deals-rating">
											<h3>${c.name}</h3>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
											<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
											<span></span>
										</div>
										<div class="col-md-4 deals-price">
											<p>${c.tripNum}</p>
										</div>
										<br /> <br /> <br /> <br />
										<div class="clearfix"></div>
									</div>
								</div>
							</a>
						</div>
					</div>
				</c:forEach>
				<div class="clearfix"></div>
			</div>

			<!-- //container -->
			<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
			<script src="js/jquery-ui.js"></script>
			<script type="text/javascript" src="js/script.js"></script>
			<script src="js/jquery.simple-text-rotator.js"></script>
			<script src="js/smoothscroll.js"></script>
			<script src="js/wow.min.js"></script>
			<script src="js/jquery.flexslider.js"></script>
			<script src="js/templatemo-script.js"></script>

			<div id="search_div">
				<form id="searchForm" method="post" action="toCity.action">
					<input type="hidden" id="tp" name="thispage"
						value="${page.thispage}"> <input type="hidden"
						name="rowperpage" value="${page.rowperpage}">
				</form>
			</div>
			<script type="text/javascript">
				function changePageA(newtp) {
					//修改thispage的值
					document.getElementById("tp").value = newtp;
					document.getElementById("searchForm").submit();
				}
				function changePageB(obj) {
					var newtp = obj.value;
					var reg = /^[1-9][0-9]*$/;
					if (!reg.test(newtp)) {
						alert("请输入正确的页码(正整数)");
						obj.value = "${page.thispage}";
						return;
					}
					if (newtp == "${page.thispage}") {
						return;
					}
					document.getElementById("tp").value = newtp;
					document.getElementById("searchForm").submit();
				}
			</script>

			<div id="fy_div">
				共${page.countrow }条记录 共${page.countpage }页 
				<a href="javascript:void(0)" onclick="changePageA(1)">首页</a> 
				<a href="javascript:void(0)" onclick="changePageA('${(page.thispage-1)==0?1:(page.thispage-1)}')">上一页</a>
				<%-- 分页逻辑开始 --%>
				<c:set var="begin" scope="page" value="1" />
				<c:set var="end" scope="page" value="1" />
				<c:if test="${page.countpage<=5}">
					<c:set var="begin" scope="page" value="1" />
					<c:set var="end" scope="page" value="${page.countpage }" />
				</c:if>
				<c:if test="${page.countpage>5 }">
					<c:choose>
						<c:when test="${page.thispage<=3}">
							<c:set var="begin" scope="page" value="1" />
							<c:set var="end" scope="page" value="5" />
						</c:when>
						<c:when test="${page.thispage>=page.countpage-2 }">
							<c:set var="begin" scope="page" value="${page.countpage-4 }" />
							<c:set var="end" scope="page" value="${page.countpage }" />
						</c:when>
						<c:otherwise>
							<c:set var="begin" scope="page" value="${page.thispage-2 }" />
							<c:set var="end" scope="page" value="${page.thispage+2 }" />
						</c:otherwise>
					</c:choose>
				</c:if>
				<c:forEach begin="${begin }" end="${end}" step="1" var="i">
					<c:if test="${i!=page.thispage}">
						<a href="javascript:void(0)" onclick="changePageA('${i}')">${i }</a>
					</c:if>
					<c:if test="${i==page.thispage}">${i }</c:if>
				</c:forEach>
				<%-- 分页逻辑结束 --%>
				<a href="javascript:void(0)" onclick="changePageA('${(page.thispage+1)==page.countpage?page.countpage:(page.thispage+1)}')">下一页</a>
				<a href="javascript:void(0)" onclick="changePageA('${page.countpage}')">尾页</a> 跳转到<input
					type="text" value="${page.thispage }" onblur="changePageB(this)" />页
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
