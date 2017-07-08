<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="cts" value="${pageContext.request.contextPath}" />

<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76" href="img/apple-icon.png">
<!-- 小图标-->
<link rel="icon" type="image/png" href="img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>个人中心</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<!--     Fonts and icons     -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<!-- CSS Files -->
<link href="/css/bootstrap.min.css" rel="stylesheet" />
<link href="/css/material-kit.css" rel="stylesheet" />
</head>

<body class="profile-page">

	<script type="text/javascript">
		function changePageA(newtp) {
			//修改thispage的值
			document.getElementById("tp").value = newtp;
			document.getElementById("searchForm").submit();
		}
	</script>
	<div id="search_div">
		<form id="searchForm" method="post" action="/toNote">
			<input type="hidden" id="tp" name="thispage" value="${page.thispage}">
			<input type="hidden" name="rowperpage" value="${page.rowperpage}">
		</form>
	</div>

	<nav
		class="navbar navbar-transparent navbar-fixed-top navbar-color-on-scroll">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#navigation-example">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Go Travel</a>
			</div>
			<div class="collapse navbar-collapse" id="navigation-example">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="../index.action" target="_blank"> 首页 </a></li>
					<li><a href="javascript:void(0)" onclick="changePageA(1)"
						target="_blank"> <i class="material-icons">unarchive</i>游记
					</a></li>
					<li><a href="/findTripList" target="_self"
						class="btn btn-simple btn-white btn-just-icon"> <span
							style="font-size: 14px">我的行程</span>
					</a></li>
					<li><a href="https://www.facebook.com/CreativeTim"
						target="_blank" class="btn btn-simple btn-white btn-just-icon">
							<i class="fa fa-facebook-square"></i>
					</a></li>
					<li><a href="https://www.instagram.com/CreativeTimOfficial"
						target="_blank" class="btn btn-simple btn-white btn-just-icon">
							<i class="fa fa-instagram"></i>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="wrapper">
		<div class="header header-filter"
			style="background-image: url('/images/slider/1.jpg')"></div>
		<div class="main main-raised">
			<div class="profile-content">
				<div class="container">
					<div class="row">
						<div class="profile">
							<div class="avatar">
								<a href="/index.action"> <img
									src="${user_info.userInfo.imgUrl}" style="border-radius: 120px"
									width="120px" height="120px" />
								</a>
							</div>
							<div class="name">
								<h3 class="title">${user_info.username}</h3>
							</div>
						</div>
					</div>
					<div class="description text-center"></div>
					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="profile-tabs">
								<div class="nav-align-center">
									<ul class="nav nav-pills" role="tablist">
										<li class="active"><a href="#studio" role="tab"
											data-toggle="tab"> <i class="material-icons">camera</i>
												个人信息
										</a></li>
										<%--<li>
				                            <a href="#work" role="tab" data-toggle="tab">
												<i class="material-icons">palette</i>
												行程
				                            </a>
				                        </li>
				                        <li>
				                            <a href="#shows" role="tab" data-toggle="tab">
												<i class="material-icons">favorite</i>
				                                游记
				                            </a>
				                        </li>--%>
									</ul>

									<div class="tab-content gallery">
										<div class="tab-pane active" id="studio">
											<div class="row">
												<div class="col-md-12" style="width: 500px; margin: 0 auto"
													align="center">
													<!-- <h4>我的详细信息</h4> -->
													<span>&nbsp;&nbsp;用户名</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="username" readonly="true"
														placeholder="${user_info.username}" /><br />
													<br /> <span>真实姓名</span>&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="userInfo.name" readonly="true"
														placeholder="${user_info.userInfo.name}" /><br />
													<br /> <span>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="userInfo.gender" readonly="true"
														placeholder="${user_info.userInfo.gender}" /><br />
													<br /> <span>&nbsp;年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="userInfo.age" readonly="true"
														placeholder="${user_info.userInfo.age}" /><br />
													<br /> <span>&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱</span>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="userInfo.email" readonly="true"
														placeholder="${user_info.userInfo.email}" /><br />
													<br /> <span>&nbsp;&nbsp;手机号</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="text" name="userInfo.telephone" readonly="true"
														placeholder="${user_info.userInfo.telephone}" /><br />

													<%-- 
													<h3 style="color: red">我的行程</h3>
													<c:if test="${empty tripList}">你还没有行程</c:if>
													<c:if test="${!empty tripList}">
														<div style="margin: 0 auto;">
															<c:forEach items="${tripList}" var="t">
																<div class="col-md-4" style="width: 200px">
																	<c:forEach items="${viewPhotoUrlList}" var="v"
																		begin="0" end="1">
																		<br />
																		<img src="${v}" class="img-rounded" />
																	</c:forEach>
																</div>
																<br />
																<div class="col-md-8" align="left" style="width: 250px">
																	<span style="font-size: 16px">出发城市： </span><span
																		style="font-size: 16px">${t.startName}</span><br />
																	<br /> <span style="font-size: 16px">目的城市：&nbsp;&nbsp;&nbsp;&nbsp;
																	</span><span style="font-size: 16px">${t.endName}</span><br />
																	<br /> <span style="font-size: 16px">出发时间： </span><span
																		style="font-size: 16px"><fmt:formatDate
																			value="${t.startTime}" pattern="yyyy-MM-dd" /></span><br />
																	<br /> <span style="font-size: 16px">结束时间： </span><span
																		style="font-size: 16px"><fmt:formatDate
																			value="${t.endTime}" pattern="yyyy-MM-dd" /></span><br />
																	<br /> <span style="font-size: 16px">酒店名称： </span><span
																		style="font-size: 16px">${t.hotelName}</span><br />
																	<br /> <span style="font-size: 16px">景点名称： </span><span
																		style="font-size: 16px">${t.hotelName}</span><br />
																	<br /> <span style="font-size: 16px">游玩天数： </span><span
																		style="font-size: 16px">${t.tripTime}</span><br />
																	<br />
																</div>
																<br />
																<br />
															</c:forEach>
														</div>
													</c:if>
													 --%>
													
													
													<br />
													<br />
													<div style="margin: 0px auto;">
														<h4 >我的游记</h4>
														<c:if test="${empty noteList}">你还没有写游记</c:if>
														<c:if test="${!empty noteList}">
															<c:forEach items="${noteList}" var="n">
																<h4 align="left">游记标题：${n.title}</h4>
																<h6 align="left">
																	创建时间：
																	<fmt:formatDate value="${n.createTime}"
																		pattern="yyyy-MM-dd" />
																</h6>
																${n.content}
															</c:forEach>
														</c:if>
													</div>
												</div>
												<div class="tab-pane active" id="shows">
													<div class="row"></div>
												</div>
											</div>
										</div>
										<%--
										<div class="tab-pane text-center" id="shows">
											<div class="row">
												<div class="col-md-4">
													<img src="/images/grBack.jpg" class="img-rounded" style="height:150px"/>
												</div>
												<div class="col-md-8">
													<h3>标题</h3>
													<p>听一首安静的慢歌
														回忆年轻时的旅行
														微风津细雨
														我们躲在酒店听风听雨听听歌
														木头床、木头桌、落地窗前的大浴缸
														多年后
														我们已为人父母
														这些美好一定依然如故。<p>
												</div>
											</div>
										</div>
									</div>
									<div class="tab-content gallery">
										<div class="tab-pane active" id="work">
											<div class="row">
												<div class="col-md-12" style="width:500px;height:600px;">
												<c:forEach items="${tripList}" var="t">
													<div class="col-md-4">
														<c:forEach items="${viewPhotoUrlList}" var="v" begin="0" end="1">
															<img src="${v}" class="img-rounded" />
														</c:forEach>
													</div>
													<div class="col-md-8">
														<span style="font-size:16px">出发城市： </span><span style="font-size:16px">${t.startName}</span><br/><br/>
														<span style="font-size:16px">目的城市： </span><span style="font-size:16px"></span><br/><br/>
														<span style="font-size:16px">出发时间： </span><span style="font-size:16px"><fmt:formatDate value="${t.startTime}" pattern="yyyy-MM-dd"/></span><br/><br/>
														<span style="font-size:16px">结束时间： </span><span style="font-size:16px"><fmt:formatDate value="${t.endTime}" pattern="yyyy-MM-dd"/></span><br/><br/>
														<span style="font-size:16px">酒店名称： </span><span style="font-size:16px">${t.hotelName}</span><br/><br/>
														<span style="font-size:16px">景点名称： </span><span style="font-size:16px">${city}</span><br/><br/>
														<span style="font-size:16px">游玩天数： </span><span style="font-size:16px">${t.tripTime}</span><br/><br/>
													</div>
												</c:forEach>
												</div>
											</div>
				                        </div>
									</div>--%>

									</div>
								</div>
								<!-- End Profile Tabs -->
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
		<footer class="footer">
			<div class="container">
				<nav class="pull-left">
					<ul>
						<li><a href="#"> GoTravel </a></li>
						<li><a href="http://presentation.creative-tim.com"> About
								Us </a></li>
						<li><a href="http://blog.creative-tim.com"> Blog </a></li>
						<li><a href="#/license"> Licenses </a></li>
					</ul>
				</nav>
				<div class="copyright pull-right">
					&copy; 2017, made with <i class="fa fa-heart heart"></i> by
					GoTravel
				</div>
			</div>
		</footer>
</body>
<!--   Core JS Files   -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/material.min.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="js/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="js/material-kit.js" type="text/javascript"></script>
</html>
