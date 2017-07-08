<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="cts" value="${pageContext.request.contextPath}"/>


<!DOCTYPE html>
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
<!--//header-->
<jsp:include page="header.jsp"/>
<!-- banner -->
<c:set var="c" value="${cityInfo}" />
<div class="banner holidays-banner" style="height: 400px!important;  background-image: url(${c.photoUrl});">
    <!-- container -->
    <div class="container">
        <div class="col-md-8 banner-right">

            <div class="sap_tabs">
                <div class="booking-info about-booking-info">
                    <h2>${ c.name }</h2>
                </div>
                <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                    <!---->
                    <div class="facts weekend-facts">
                        <div class="booking-form train-form">
                            <link rel="stylesheet" href="/css/jquery-ui.css" />
                            <!---strat-date-piker---->
                            <script>
                                $(function() {
                                    $( "#datepicker,#datepicker1" ).datepicker();
                                });
                            </script>
                            <!---/End-date-piker---->
                            <!-- Set here the key for your domain in order to hide the watermark on the web server -->

                            <div class="online_reservation">
                                <div class="b_room">
                                    <div class="booking_room">
                                        <div class="reservation">
                                            <ul>
                                                <li  class="span1_of_1 desti about-desti">
                                                    <h5>城市位置</h5>
                                                    <div class="book_date">
                                                        <form>
                                                            <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                            <input type="text" placeholder="City, Area ${c.name}" class="typeahead1 input-md form-control tt-input" required="">
                                                        </form>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="reservation">
                                            <ul>
                                                <li  class="span1_of_1">
                                                    <h5>出发时间</h5>
                                                    <div class="book_date">
                                                        <form>
                                                            <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                                            <input type="date" value="选择日期" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '选择日期';}">
                                                        </form>
                                                    </div>
                                                </li>
                                                <li  class="span1_of_1 left">
                                                    <h5>达到时间</h5>
                                                    <div class="book_date">
                                                        <form>
                                                            <span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
                                                            <input type="date" value="选择日期" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '选择日期';}">
                                                        </form>
                                                    </div>
                                                </li>

                                            </ul>
                                        </div>
                                        <div class="reservation">
                                            <ul>
                                                <li class="span1_of_3">
                                                    <div class="date_btn">
                                                        <form>
                                                            <input type="submit" value="查询" />
                                                        </form>
                                                    </div>
                                                </li>
                                                <div class="clearfix"></div>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <!---->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix"> </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom" >
    <!-- container -->
    <div class="container" style="background-color:#ffffff ">
        <%--<div class="banner-bottom-info">--%>
            <%--<h3>Welcome to the beautiful scenery!</h3>--%>
        <%--</div>--%>
        <div class="banner-bottom-grids">
            <c:forEach items="${viewsList}" var="v">
                <div class="col-md-4 weekend-grids">
                    <div class="weekend-grid">
                        <a href="toViewInfo.action?viewId=${v.viewId}">
                            <c:forEach items="${v.pois}" var="p">
                                <img src="${p.location}" alt="" width="600px" height="200px" />
                            </c:forEach>
                            <div class="weekend-grid-info">
                                <h5>${v.name}</h5>
                                <div class="rating">
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                    <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
                                </div>
                                <h6>${v.address}</h6>
                                <h4>${v.type}</h4>
                                <%--<h6>${v.location}</h6>--%>
                                <br/><br/>
                            </div>

                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner-bottom -->
<!-- footer -->



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
<script type="text/javascript">
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
</script>
<jsp:include page="footer.jsp"/>
</body>
</html>
