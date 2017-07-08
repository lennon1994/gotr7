<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cts" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <link href="../../css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<style>
html{ margin: 0; padding:0; }
body{ margin:0; padding:0;}
#bodyPage{ width:100%; min-height:100%; height:auto !important; height:100%; position:fixed; top:0; left:0; }
img.bg { position:absolute; top: 0px; left: 0px; z-index:1; display:none;}


.city{


   width:641px;
   height:300px;

	  background-color:#FFFFFF!important;
        position:absolute;
        left:40%;

		top:40%;

		margin:0 0 0 -200px;

		z-index: 1500;

      overflow: hidden;



}


.news-nav > li {
    float: left;
    padding: 0 23px;
    height: 40px;
    line-height: 40px;
    cursor: pointer;
    font-size: 15px;
    color: #333333;
}




.content {

        position:absolute;
        left:40%;

		top:30%;

		margin:-150px 0 0 -200px;
        z-index: 1500;




}

.logo {
    width: 270px;
    height: 129px;
    margin: 45px auto 0;
}

.logo > img {
    display: block;
    width: 100%;
}

.form {
    width: 100%;
    height: 40px;
    margin-top: 10px;
}

.baidu-innput {
    width: 487px;
    overflow: hidden;
    position: relative;
    float: left;
}

.baidu-innput > input {
    width: 487px;
    padding: 11px 50px 11px 5px;
    border: none;
}

.baidu-innput > label {
    display: block;
    width: 18px;
    height: 16px;
    position: absolute;
    top: 13px;
    right: 10px;
    background: url("../images/camera_new_679c15cc.png") no-repeat;
    cursor: pointer;
}

.baidu-innput > label:hover {
    background-position: 0 -20px;
}

.form button {
    width: 50px;
    height: 41px;
    float: left;
    border: none;
    font-size: 16px;
    line-height: 41px;
    text-align: center;
    color: #000;
    cursor: pointer;
    background: #e5e5e5;
    box-shadow: 0 0 2px 4px agba(179,191,193,0.5);
}
</style>
<script type="text/javascript" src="/search/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/search/js/fullplay.js"></script>

<title>搜索</title>

</head>
<body>
<div class="content">
    <div class="logo">
        <img src="/search/images/logo_white_fe6da1ec.png" alt="">
    </div>
    <div class="form">
        <form id="bdfm" target="_blank" name="bdfm" method="post" action="/toMap.action">
            <div class="baidu-innput">
                <input type="text" name="endName" placeholder="请输入你的目的地...">
            </div>
            <button><span class="glyphicon glyphicon-search" style="color: rgb(255, 140, 60);"></span></button>
        </form>
    </div>
</div>

<div id="bodyBox">

	<div id="bodyPage">
   	  <img src="/search/images/bg1.jpg" class="bg">
      <img src="/search/images/bg2.jpg" class="bg">
      <img src="/search/images/bg3.jpg" class="bg">
    </div>

</div>

<script type="text/javascript">
$(document).ready(function(e) {

   $("#bodyPage").fullImages({
	   ImgWidth: 1920,
	   ImgHeight: 980,
	   autoplay :  3500,
	   fadeTime : 1500
   });

});
</script>



</body>
</html>
