<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cts" value="${pageContext.request.contextPath}"/>

<html>
<head>
	<title>-</title>
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
<!--跳转到城市 -->
<script type="text/javascript">
	function changePageA(newtp){
		//修改thispage的值
		document.getElementById("tp").value=newtp;
		document.getElementById("searchForm").submit();
	}
</script>
<div id="search_div">
	<form id="searchForm" method="post" action="toCity.action">
		<input type="hidden" id="tp" name="thispage" value="${page.thispage}">
		<input type="hidden" name="rowperpage" value="${page.rowperpage}">
	</form>
</div>
<!--跳转到城市结束 -->
<!--header-->
<div class="header" style="padding:0px !important">
	<div class="container" style="padding:0px !important">
		<div class="header-grids">
			<div class="logo">
				<h1><a  href="index.html" ><span>Go</span>Travel</a></h1>
			</div>
			<!--navbar-header-->

			<div class="clearfix"> </div>
		</div>
		<div class="nav-top">
			<div class="top-nav">
				<span class="menu"><img src="/images/menu.png" alt="" /></span>
				<ul class="nav1" style="width:1200px !important; ">
					<li class="active"><a href="index.jsp">首页</a></li>
					<li><a href="javascript:void(0)" onclick="changePageA(1)">热门城市</a></li>
					<li><a href="#">景点</a></li>
					<li><a href="/trip/toSearch">自定义旅行</a></li>
					<li><a href="note.action?userId=${user_session.userId}">写游记</a></li>
					<li><a href="toNote.action?thispage=1">我的游记</a></li>
					<li><a href="#">常见问题</a></li>
					<li><a href="#">联系我们</a></li>
					<li><a href="#">关于我们</a></li>

				</ul>
				<div class="clearfix"> </div>
				<!-- script-for-menu -->
				<script>
					$( "span.menu" ).click(function() {
						$( "ul.nav1" ).slideToggle( 300, function() {
							// Animation complete.
						});
					});
				</script>
				<!-- /script-for-menu -->
			</div>

			<script>
				/* $(function () {
					<c:if test="${empty errorInfo}"></c:if>
					<c:if test="${!empty errorInfo}">alert('${errorInfo}');</c:if>
				}) */
				
		function checkForm(){
		//非空校验
		var flag = true;
		
		flag = checkNull("username", "用户名不能为空") && flag;
		flag = checkNull("password", "密码不能为空") && flag;
		
		
		return flag;
	}
				
				 //检查输入框是否为空
        function checkNull(name,msg){
            var value=document.getElementsByName(name)[0].value;
            setMsg(name,"");
            if(value==""){
                setMsg(name,msg);
                /*msg="<font style='color:red;font-size:14px;'>"+msg+"</font>";
                document.getElementById(name+"_msg").innerHTML=msg;*/
                return false;
            }
            return true;
        }
				
        function setMsg(name,msg){
            msg="<font style='color:red;font-size:14px;'>"+msg+"</font>";
            document.getElementById(name+"_msg").innerHTML=msg;
        }
			
       
        var TT = JT = {
        		checkLogin : function(){
        			
        			var _ticket = getCookie("GOTR_TICKET");
        			if(!_ticket){
        				return ;
        			}
        			//当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
        			$.ajax({
        				
        				url : "query/" + _ticket+".action",
        				dataType : "json",
        				type : "GET",
        				success : function(data){
        					if(data.status == 200){
        						
        						var _data=data.data;//获取到user对象
        						
        						var html ="<a href='#'><img  width='38px' height='38px' style='border-radius: 38px;' src='"+_data.userInfo.imgUrl+"'/></a>"+
        						_data.username+"，欢迎来到京淘！<a href=\"/logout.action\" class=\"link-logout\">[退出]</a>";
        						$("#loginbar").html(html);
        						$(".dropdown-grids").css('display','none');
        					}
        				}
        			});
        		}
        	}

        	$(function(){
        		// 查看是否已经登录，如果已经登录查询登录信息
        		TT.checkLogin();
        	});
       
        
        function getCookie(c_name){
	        if (document.cookie.length>0) {
	          	var c_start=document.cookie.indexOf(c_name + "=")
		          if (c_start!=-1){ 
			            c_start=c_start + c_name.length+1 
			            var c_end=document.cookie.indexOf(";",c_start)
			            if (c_end==-1) 
			            	c_end=document.cookie.length
			            	return unescape(document.cookie.substring(c_start,c_end))
			            } 
	          }
	        return ""
        }
				
	</script>
	
	

			<!-- <img  width="38px" height="38px" style="border-radius: 38px;" src="${user_session.userInfo.imgUrl}"/> -->
			
				<div id="loginbar" style="position:absolute;top:5px;right:20px;background-color: #FFFFFF;border:none;">
					<a href="/profile-page/profile-page?userId=${user_session.userId}">
						<img  width="38px" height="38px" style="border-radius: 38px;" src=""/></a>
					<span></span>

					<a href="logout.action" id=""><span>注销</span></a>
				</div>
			
			
				
				<div class="dropdown-grids" >
					<div id="loginContainer" style="position:absolute;top:5px;right:20px;background-color: #FFFFFF;border:none;">
						<a href="#" id="loginButton"><span style="color:green!important;">登录</span></a>&nbsp;&nbsp;
						<a href="register/register.action" id="regButton"><span style="color:green!important;">注册</span></a>
						<div id="loginBox">
							<form id="loginForm" method="post" action="login.action" onsubmit="return checkForm()">
								<div class="login-grids">
									<div class="login-grid-left">
										<fieldset id="body">
											<fieldset>
												<label for="username">用户名</label>
												<input type="text" name="username" id="username" value=""/>
											</fieldset>
											<fieldset>
												<label for="password">密码</label>
												<input type="password" name="password" id="password" />
											</fieldset>
											<input type="submit" id="login" value="登录">
											<label for="checkbox"><input type="checkbox" id="checkbox" name="rename" ${empty pwd?"":"checked='checked'"}> <i>记住密码</i></label>
										</fieldset>
										<span><a href="#">忘记密码?</a></span>
										 <span id="username_msg"></span>
                                         <span id="password_msg"></span>
										<div class="or-grid">
											<p>或</p>
										</div>
										<div class="social-sits">
											<div class="facebook-button">
												<a href="#">用微信登录</a>
											</div>
											<div class="chrome-button">
												<a href="#">用QQ登录</a>
											</div>
											<div class="button-bottom">
												<p>新用户？ <a href="register/register.action">注册</a></p>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--//header-->
<script defer src="/js/jquery.flexslider.js"></script>
<script src="/js/easyResponsiveTabs.js" type="text/javascript"></script>
<script src="/js/jquery-ui.js"></script>
<script type="text/javascript" src="/js/script.js"></script>
<script src="/js/jquery.simple-text-rotator.js"></script>
<script src="/js/smoothscroll.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/jquery.flexslider.js"></script>
<script src="/js/templatemo-script.js"></script>

</body>
</html>
