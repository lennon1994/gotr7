<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cts" value="${pageContext.request.contextPath}"/>



<html>
<head>
<title>游记书写</title>
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
<%@include file="header.jsp"%>
	<!--//header-->

	<!-- banner-bottom -->
	<div class="banner-bottom" style="background:url(/images/background1_1.jpg) no-repeat!important">
		<!-- container -->
		<div class="container" style="background-color:#ffffff ">
			<div class="faqs-top-grids">
				<div class="blog-grids">
					<div class="col-md-12 blog-left">
						<div class="blog-left-grid single-left-grid">
							<%--<img src="images/banner1.jpg" alt="">--%>
							<div class="blog-left-right">
                               <form action="saveNote.action" name="upfile" method="post" target="_blank">
								   <h1 >我的游记</h1>
								   <input type="hidden" name="userId" value="${userId}"/>
								   <input type="text" name="title" placeholder="标题" >
								   <textarea id="editor" name="content"  type="text/plain" style="width:900px;height:500px;">
								   </textarea>

								   <input type="hidden" value="${content}" name="text" id="edd" />
								   <input type="submit" onclick="get()" value="编辑完成"/>
							   </form>

                                  <script type="text/javascript">
										//实例化编辑器
										//建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，
										//直接调用UE.getEditor('editor')就能拿到相关的实例
                                        var ue = UE.getEditor('editor');
									function get() {
										document.getElementById("edd").value=ue.getContent();

                                    }

										function getContent() {
											var arr = [];
											arr.push("使用editor.getContent()方法可以获得编辑器的内容");
											arr.push("内容为：");
											arr.push(ue.getContent());
											//arr.push(UE.getEditor('editor').getContent());

											alert(arr.join("\n"));
										}
										var txt=ue.getContent();
										alert(ue.getContent());
										ue.ready(function () {
											ue.setContent($("#edd").val());
                                        });

									</script>
			</div>
		</div>
	</div>

	<div class="clearfix"> </div>
</div>
</div>
</div>
		<!-- //container -->

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
</div>
<%@include file="footer.jsp"%>
</body>
</html>
