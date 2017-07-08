var TT = JT = {
	checkLogin : function() {
		var _ticket = getCookie("GOTR_TICKET");
		if (!_ticket) {
			return;
		}
		// 当dataType类型为jsonp时，jQuery就会自动在请求链接上增加一个callback的参数
		$.ajax({
					url : "query/" + _ticket + ".action",
					dataType : "json",
					type : "GET",
					success : function(data) {
						if (data.status == 200) {
							
							var _data = data.data;// 获取到user对象
							var html = "<a href='/profile-page/profile-page.action?userId="+_data.userId+"'><img  width='38px' height='38px' style='border-radius: 38px;' src='"
									+ _data.userInfo.imgUrl
									+ "'/></a>"
									+ _data.username
									+ "，欢迎来到gotr！<a href=\"/logout.action\" class=\"link-logout\">[退出]</a>"
									+ "<input type='hidden' name='userId' value='"
									+ _data.userId + "'/>";
							$("#loginbar").html(html);
							$(".dropdown-grids").css('display', 'none');
						}
					}
				});
	}
}

$(function() {
	// 查看是否已经登录，如果已经登录查询登录信息
	TT.checkLogin();
});

function getCookie(c_name) {
	if (document.cookie.length > 0) {
		var c_start = document.cookie.indexOf(c_name + "=")
		if (c_start != -1) {
			c_start = c_start + c_name.length + 1
			var c_end = document.cookie.indexOf(";", c_start)
			if (c_end == -1)
				c_end = document.cookie.length
			return unescape(document.cookie.substring(c_start, c_end))
		}
	}
	return ""
}