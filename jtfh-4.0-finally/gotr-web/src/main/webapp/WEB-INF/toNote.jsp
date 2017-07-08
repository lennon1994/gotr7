<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cts" value="${pageContext.request.contextPath}"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>
<head>
<title>游记查看</title>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Govihar Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
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
<script src="js/modernizr.custom.js"></script>
<script type="text/javascript" src="js/jquery-hengdh/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/jquery-hengdh/jquery.hoverIntent.minified.js"></script>
<script type="text/javascript" src="js/jquery-hengdh/jquery.naviDropDown.1.0.js"></script>

<!-- //js -->
<!-- fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,700,500italic,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

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
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/ueditor.all.js"> </script>
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/ueditor.parse.js"></script>
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/ueditor.parse.min.js"></script>
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/ueditor.all.min.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="/utf8-jsp/lang/zh-cn/zh-cn.js"></script>
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

</style>


</head>
<body >
<%@include file="header.jsp"%>
	<!--//header-->
	<!-- banner-bottom -->
	<div class="banner-bottom" style="background:url(/images/background1_1.jpg) no-repeat!important">
		<!-- container -->
		<div class="container" style="background-color:#ffffff ">
			<div class="faqs-top-grids">
				<div class="blog-grids">
					<div class="col-md-8 blog-left">
						<div class="blog-left-grid single-left-grid">
							<div class="blog-left-right">
								<h1 >游记</h1>
								<c:forEach items="${allNote}" var="n">
									<h3>标题：${n.title}</h3>
									<h7>创建时间：<fmt:formatDate value="${n.createTime}" pattern="yyyy-MM-dd"/></h7>
									<div>&nbsp;&nbsp;${n.content}</div>
								</c:forEach>

								<%--<a href="javascript:void(0)" onclick="changePageB(1)">--%>
								<div id="search_div">
									<form id="searchForm1" method="post" action="/toNote.action">
										<input type="hidden" id="tp1" name="thispage" value="${page.thispage}">
										<input type="hidden" name="rowperpage" value="${page.rowperpage}">
									</form>
								</div>
								<script type="text/javascript">
									function changePageE(newtp){
										//修改thispage的值

										document.getElementById("tp1").value=newtp;
										document.getElementById("searchForm1").submit();
									}
									function changePageC(obj){
										var newtp = obj.value;
										var reg=/^[1-9][0-9]*$/;
										if(!reg.test(newtp)){
											alert("请输入正确的页码(正整数)");
											obj.value = "${page.thispage}";
											return;
										}
										if(newtp=="${page.thispage}"){
											return;
										}
										document.getElementById("tp").value=newtp;
										document.getElementById("searchForm1").submit();
									}
								</script>

								<div id="fy_div">
									共${page.countrow }条记录 共${page.countpage }页
									<a href="javascript:void(0)" onclick="changePageE(1)">首页</a>
									<a href="javascript:void(0)" onclick="changePageE('${(page.thispage-1)==0?1:(page.thispage-1)}')">上一页</a>
									<%-- 分页逻辑开始 --%>
									<c:set var="begin" scope="page" value="1"/>
									<c:set var="end" scope="page" value="1"/>
									<c:if test="${page.countpage<=5}">
										<c:set var="begin" scope="page" value="1"/>
										<c:set var="end" scope="page" value="${page.countpage }"/>
									</c:if>
									<c:if test="${page.countpage>5 }">
										<c:choose>
											<c:when test="${page.thispage<=3}">
												<c:set var="begin" scope="page" value="1"/>
												<c:set var="end" scope="page" value="5"/>
											</c:when>
											<c:when test="${page.thispage>=page.countpage-2 }">
												<c:set var="begin" scope="page" value="${page.countpage-4 }"/>
												<c:set var="end" scope="page" value="${page.countpage }"/>
											</c:when>
											<c:otherwise>
												<c:set var="begin" scope="page" value="${page.thispage-2 }"/>
												<c:set var="end" scope="page" value="${page.thispage+2 }"/>
											</c:otherwise>
										</c:choose>
									</c:if>
									<c:forEach begin="${begin }" end="${end}" step="1" var="i">
										<c:if test="${i!=page.thispage}">
											<a href="javascript:void(0)" onclick="changePageE('${i}')">${i }</a>
										</c:if>
										<c:if test="${i==page.thispage}">${i }</c:if>
									</c:forEach>
									<%-- 分页逻辑结束 --%>
									<a href="javascript:void(0)" onclick="changePageE('${(page.thispage+1)==page.countpage?page.countpage:(page.thispage+1)}')">下一页</a>
									<a href="javascript:void(0)" onclick="changePageE('${page.countpage}')">尾页</a>
									跳转到<input type="text" value="${page.thispage }" onblur="changePageC(this)"/>页
								</div>





							</div>
							<div class="opinion">
								<h3>评论</h3>
								<form action="saveComment.action" method="post">
									<c:forEach items="${allNote}" var="n">
									<input type="hidden" placeholder="Name" required="" name="noteId" value="${n.noteId}">
									</c:forEach>
									<textarea placeholder="Message" required="" name="comment"></textarea>
									<input type="submit" value="评论">
								</form>
								<br/>
								<div>
									<c:forEach items="${commentList }" var="c">
										
										<c:forEach items="${userList}" var="u">
											<c:if test="${c.userId==u.userId }">
												<div >
													<img style="width:30px;height:30px; border-radius:30px;" src="${u.userInfo.imgUrl}" />
													<span>${u.username }</span><br/>
												</div>
												<textarea  style="width:100%;" readonly="readonly" name="comment">${c.comment }</textarea><br/><br/>
											</c:if>
										</c:forEach>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 blog-right">
						<div class="Categories">
							<h3>游记列表</h3>
							<ul>
								<li><a href="#">我的三亚之行</a></li>
								<li><a href="#">内蒙古鄂尔多斯大草原</a></li>
								<li><a href="#">云南丽江大峡谷</a></li>
								<li><a href="#">秦始皇陵兵马俑</a></li>
							</ul>
						</div>
						<br/>
						<br/>
						<br/>
						<div class="Categories">
							<h3>搜索游记</h3>
							<ul class="marked-list offs1">
								<li><a href="#">May 2015 (7)</a></li>
								<li><a href="#">April 2015 (11)</a></li>
								<li><a href="#">March 2015 (12)</a></li>
								<li><a href="#">February 2015 (14)</a> </li>
								<li><a href="#">January 2015 (10)</a></li>
								<li><a href="#">December 2014 (12)</a></li>
								<li><a href="#">November 2014 (8)</a></li>
								<li><a href="#">October 2014 (7)</a> </li>
								<li><a href="#">September 2014 (8)</a></li>
								<li><a href="#">August 2014 (6)</a></li>
							</ul>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!-- //banner-bottom -->
	<script defer src="js/jquery.flexslider.js"></script>
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
	<script src="js/jquery-ui.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
	<script src="js/jquery.simple-text-rotator.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.flexslider.js"></script>
	<script src="js/templatemo-script.js"></script>
		
<%@include file="footer.jsp"%>
</body>
</html>
