<%@ page contentType="text/html; charset=utf-8"%>
<html lang="en" class="no-js">

<head>

	<meta charset="utf-8">
	<title>后台登录</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">


	<!-- CSS -->
	<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
	<link rel="stylesheet" href="/back/assets/css/reset.css">
	<link rel="stylesheet" href="/back/assets/css/supersized.css">
	<link rel="stylesheet" href="/back/assets/css/style.css">

	<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

</head>
<script>
	function formSubmit (url,sTarget){
		document.forms[0].target = sTarget
		document.forms[0].action = url;
		document.forms[0].submit();
		return true;
	}
</script>

<body>

<div class="page-container">
	<h1>GoTravel</h1>
	<form action="" method="post">
		<input type="text" name="username" class="username" placeholder="Username">
		<input type="password" name="password" class="password" placeholder="Password">
		<button type="submit" onclick="formSubmit('/toBackLogin','_self');">登录</button>
		<div class="error"><span>+</span></div>
	</form>
	<div class="connect">


	</div>
	<div class="msgtip">
		<c:if test="${!empty errorInfo}">
			${errorInfo}
		</c:if>
	</div>
</div>


<!-- Javascript -->
<script src="/back/assets/js/jquery-1.8.2.min.js"></script>
<script src="/back/assets/js/supersized.3.2.7.min.js"></script>
<script src="/back/assets/js/supersized-init.js"></script>
<script src="/back/assets/js/scripts.js"></script>

</body>

</html>
