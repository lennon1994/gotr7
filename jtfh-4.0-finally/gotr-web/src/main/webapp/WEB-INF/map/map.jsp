<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cts" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="initial-scale=1.0, user-scalable=no, width=device-width">
<title>按起终点经纬度规划路线</title>
<link rel="stylesheet"
	href="http://cache.amap.com/lbs/static/main1119.css" />
<link rel="stylesheet" href="/map/css/calendar.css">
<style type="text/css">
#panel {
	position: fixed;
	background-color: white;
	max-height: 90%;
	overflow-y: auto;
	top: 10px;
	right: 10px;
	width: 280px;
}

.input1 {
	width: 360px;
	height: 300px;
	margin-left: 60px;
	margin-top: 40px;
	position: absolute;
	z-index: 10;
	top: 0;
}

.destination-header {
	background-color: #bcd2ee !important;
	display: block;
	color: #535658;
	font-size: 20px;
	line-height: 24px;
	background-color: #f7f8fb;
	padding: 5px 10px;
	border-radius: 5px;
	border: 1px solid #e0e3e7;
}

.header-setting {
	height: 55px;
	position: relative;
	z-index: 10;
	margin: 5px 2px;
}

.city {
	font-family: "宋体";
	width: 200px;
	height: 30px;
	font-size: 25px;
}

html {
	font: 500 14px 'roboto';
	color: #333;
	background-color: #fafafa;
}

a {
	text-decoration: none;
}

ul, ol, li {
	list-style: none;
	padding: 0;
	margin: 0;
}

#demo {
	width: 300px;
	margin: 150px auto;
}

p {
	margin: 0;
}

#dt {
	height: 28px;
	width: 200px;
	padding: 0 6px;
	border: 1px solid #ccc;
	outline: none;
}
</style>
<script type="text/javascript"
	src="http://webapi.amap.com/maps?v=1.3&key=e7754fa7d0b29289c91a1b6d2d21a680&plugin=AMap.Driving"></script>
<script type="text/javascript"
	src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
	<div class="input1">
		<form action="/toTripView" method="post">
			<div class="header-setting" ng-class="{'show-setting':isSettingShow}">
				<header class="destination-header clearfix">
					<label for="">出发：</label> <input class="city" type="text"
						name="email" placeholder="${trip.startName}" readonly="readonly">
				</header>
				<header class="destination-header clearfix">
					<label for="">开始时间：</label> <input type="text" id="dt" class="city"
						name="startTime" placeholder="">
					<div id="dd"></div>
				</header>
				<header class="destination-header clearfix">
					<label for="">结束日期：</label> <input type="text" id="dt2"
						class="city" name="endTime" placeholder="">
					<div id="dd2"></div>
				</header>
				<header class="destination-header clearfix">
					<label for="">目的地：</label> <input class="city" type="text"
						placeholder="${endName}">
				</header>
				<header class="destination-header clearfix">
					<input class="city" type="submit" name="email" value="下一步"
						style="background-color: #ffffff; font-family: 'Open Sans', sans-serif; font-size: 12px; text-decoration: none; color: #3bb3e0; width: 50px;">
				</header>
			</div>
			<div id="dd" style="padding: 0px;"></div>
		</form>
	</div>
	<div id="container"></div>
	<div id="panel"></div>
	<script type="text/javascript">
	    //基本地图加载
	    var map = new AMap.Map("container", {
	        resizeEnable: true,
	        center: [116.397428, 39.90923],//地图中心点
	        zoom: 13 //地图显示的缩放级别
	    });
	    //构造路线导航类
	    var driving = new AMap.Driving({
	        map: map,
	    });
	    // 根据起终点经纬度规划驾车导航路线
	    driving.search(new AMap.LngLat(${startXY}), new AMap.LngLat(${endXY}));
	</script>

	<script src="/map/js/jquery.js"></script>
	<script src="/map/js/calendar.js"></script>
	<script>
    $('#ca').calendar({
        width: 320,
        height: 320,
        data: [
            {
                date: '2015/12/24',
                value: 'Christmas Eve'
            },
            {
                date: '2015/12/25',
                value: 'Merry Christmas'
            },
            {
                date: '2016/01/01',
                value: 'Happy New Year'
            }
        ],
        onSelected: function (view, date, data) {
            console.log('view:' + view)
            alert('date:' + date)
            console.log('data:' + (data || 'None'));
        }
    });

    $('#dd').calendar({
        trigger: '#dt',
        zIndex: 999,
        format: 'yyyy-mm-dd',
        onSelected: function (view, date, data) {
            console.log('event: onSelected')
        },
        onClose: function (view, date, data) {
            console.log('event: onClose')
            console.log('view:' + view)
            console.log('date:' + date)
            console.log('data:' + (data || 'None'));
        }
    });
    $('#dd2').calendar({
        trigger: '#dt2',
        zIndex: 999,
        format: 'yyyy-mm-dd',
        onSelected: function (view, date, data) {
            console.log('event: onSelected')
        },
        onClose: function (view, date, data) {
            console.log('event: onClose')
            console.log('view:' + view)
            console.log('date:' + date)
            console.log('data:' + (data || 'None'));
        }
    });
</script>
</body>
</html>