<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@include file="common/tag.jsp"%>
<!DOCTYPE html>
<html>

<head>
<title>秒杀详情页</title>
<%@include file="common/head.jsp"%>
<link href="/css/style.css" type="text/css" rel="stylesheet" media="all">
</head>

<body>
	<div class="header" style="padding: 0px !important">
		<div class="container" style="padding: 0px !important">
			<div class="header-grids">
				<div class="logo">
					<h1>
						<a href="index.html"><span>Go</span>Travel</a>
					</h1>
				</div>
				<!--navbar-header-->
				<div class="clearfix"></div>
			</div>
			<div class="nav-top">
				<div class="top-nav">
					<span class="menu"><img src="/images/menu.png" alt="" /></span>
					<ul class="nav1" style="width: 1200px !important;">
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
					<div class="clearfix"></div>
					<!-- script-for-menu -->
					<script>
						$( "span.menu" ).click(function() {
								$( "ul.nav1" ).slideToggle( 300, function() {
							});
						});
					</script>
				</div>

				<script>
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
       						_data.username+"，欢迎来到gotr！<a href=\"/logout.action\" class=\"link-logout\">[退出]</a>";
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

				<div id="loginbar"
					style="position: absolute; top: 5px; right: 20px; background-color: #FFFFFF; border: none;">
					<a href="/profile-page/profile-page?userId=${user_session.userId}">
						<img width="38px" height="38px" style="border-radius: 38px;" src="" />
					</a> <span></span> <a href="logout.action" id=""><span>注销</span></a>
				</div>

				<div class="dropdown-grids">
					<div id="loginContainer"
						style="position: absolute; top: 5px; right: 20px; background-color: #FFFFFF; border: none;">
						<a href="#" id="loginButton"><span style="color: green !important;">登录</span></a>&nbsp;&nbsp; 
						<a href="register/register.action" id="regButton"><spanstyle="color: green !important;">注册</span></a>
						<div id="loginBox">
							<form id="loginForm" method="post" action="login.action" onsubmit="return checkForm()">
								<div class="login-grids">
									<div class="login-grid-left">
										<fieldset id="body">
											<fieldset>
												<label for="username">用户名</label> <input type="text" name="username" id="username" value="" />
											</fieldset>
											<fieldset>
												<label for="password">密码</label> <input type="password" name="password" id="password" />
											</fieldset>
											<input type="submit" id="login" value="登录"> 
												<label for="checkbox"><input type="checkbox" id="checkbox" name="rename" ${empty pwd?"":"checked='checked'"}> <i>记住密码</i></label>
										</fieldset>
										<span><a href="#">忘记密码?</a></span> <span id="username_msg"></span>
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
												<p>
													新用户？ <a href="register/register.action">注册</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<%--登录弹出层 输入电话--%>
	<div id="killPhoneModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 class="modal-title text-center">
						<span class="glyphicon glyphicon-phone"> </span>秒杀电话
					</h3>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<input type="text" name="killPhone" id="killPhoneKey" placeholder="填写手机号" class="form-control">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<%--验证信息--%>
					<span id="killPhoneMessage" class="glyphicon"> </span>
					<button type="button" id="killPhoneBtn" class="btn btn-success">
						<span class="glyphicon glyphicon-phone"></span> Submit
					</button>
				</div>
			</div>
		</div>
	</div>

	<div class="banner-bottom">
		<div class="container">
			<div class="faqs-top-grids">
				<div class="single-page">
					<div class="col-md-8 single-gd-lt">
						<div class="single-pg-hdr">
							<h2>${seckill.name}</h2>
							<p>端午节热卖！！！</p>
							<img alt="#" src=${imgurl } width="100%" height="100%">
						</div>
						<script defer src="js/jquery.flexslider.js"></script>
						<script>
							$(window).load(function() {
								$('.flexslider').flexslider({
									animation: "slide",
									controlNav: "thumbnails"
								});
							});
						</script>
					</div>
					<div class="col-md-4 single-gd-rt">
						<div class="spl-btn" style="margin: 50px">
							<div class="spl-btn-bor">
								<a href="#"> <span class="glyphicon glyphicon-tag"
									aria-hidden="true"></span>
								</a>
								<p>Special Offer</p>
								<script>
									$(document).ready(function(){
										$('[data-toggle="tooltip"]').tooltip();   
									});
								</script>
							</div>
							<div class="sp-bor-btn text-right">
								<h4>
									<span>￥8,750</span> ￥${price}
								</h4>
								<p class="best-pri">秒杀价</p>
								<span class="glyphicon" id="seckill-box"></span>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>


	<div id="test"></div>
	<script type="text/javascript">
		function transdate(endTime){
			var date=new Date();
			date.setFullYear(endTime.substring(0,4));
			date.setMonth(endTime.substring(5,7)-1);
			date.setDate(endTime.substring(8,10));
			date.setHours(endTime.substring(11,13));
			date.setMinutes(endTime.substring(14,16));
			date.setSeconds(endTime.substring(17,19));
			return Date.parse(date)/1000;
		}	
		/* var i =transdate('2017-06-02 16:00:00') - new Date().getTime()/1000; */
		/* var i =${end}; */
		
		var t = setInterval(function(){
			if (i == 0) {
				clearInterval(t);
				return;
			}
			document.getElementById("test").innerHTML = i;
			i--;
		}, 1000)
	</script>


	<div class="footer"
		style="background: url(/images/background1_2.jpg) no-repeat !important">
		<div class="container" style="background-color: #FFFFFF">
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
					<div class="clearfix"></div>
				</div>

			</div>

			<!-- //footer -->
			<div class="footer-bottom-grids">
				<div class="container">
					<div class="footer-bottom-top-grids">
						<div class="col-md-4 footer-bottom-left">
							<h4>下载app</h4>
							<div class="d-apps">
								<ul>
									<li><a href="#"><img src="../images/app1.png" alt="" /></a></li>
									<li><a href="#"><img src="../images/app2.png" alt="" /></a></li>
									<li><a href="#"><img src="../images/app3.png" alt="" /></a></li>
								</ul>
							</div>
						</div>
						<div class="col-md-4 footer-bottom-left">
							<h4>We Accept</h4>
							<div class="a-cards">
								<ul>
									<li><a href="#"><img src="../images/c1.png" alt="" /></a></li>
									<li><a href="#"><img src="../images/c2.png" alt="" /></a></li>
									<li><a href="#"><img src="../images/c3.png" alt="" /></a></li>
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
						<div class="clearfix"></div>
						<div class="copyright">
							<p>
								Copyright &copy; 2017-2020.Company name All rights reserved.<a
									target="_blank" href=""></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
<%--jQery文件,务必在bootstrap.min.js之前引入--%>
<script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>
<script
	src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<%--使用CDN 获取公共js http://www.bootcdn.cn/--%>
<%--jQuery Cookie操作插件--%>
<script
	src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<%--jQuery countDown倒计时插件--%>
<script
	src="http://cdn.bootcss.com/jquery.countdown/2.1.0/jquery.countdown.min.js"></script>

<script src="${ctxStatic}/script/seckill.js" type="text/javascript"></script>

<script type="text/javascript">
    $(function () {
        //使用EL表达式传入参数
        seckill.detail.init({
            seckillId:${seckill.seckillId},
            startTime:${seckill.startTime.time},//毫秒
            endTime:${seckill.endTime.time}
        });
    })
</script>


</html>
