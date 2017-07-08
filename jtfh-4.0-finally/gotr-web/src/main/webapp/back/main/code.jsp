<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- html标识扩展，定义名字空间 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;" charset="utf-8">
	<title> user list</title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="/back/css/default.css" media="all" />
	
 	<link rel="stylesheet" rev="stylesheet" type="text/css" href="/back/css/extremecomponents.css" />
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="/back/css/extremesite.css" />
</head>
<script language="javascript">

	function download(){
		window.location.href="/back/main/todownload";

	}

	function preSubmit(serviceName){
		if(serviceName=="删除"||serviceName=="查看"||serviceName=="修改"||serviceName=="启用"||serviceName=="禁止"||serviceName=="排序"||serviceName=="重置密码"){
			if(serviceName=="排序"){
				showBuilding();
				return false;
			}
			if(serviceName=="删除"){
				if(_CheckAll(true,serviceName) == false){
	            	return false;
	 			}
				return confirm(operationNote(serviceName));
			}
			if(_CheckAll(true,serviceName) == false){
				return false;
	 		}
		}
	}
	
	function preCheck(serviceName) {
	 	if(serviceName=="修改"||serviceName=="查看"){
				return onlySelect(serviceName,"id",1);
		}	
	}
	
	function onlineUser(serviceName) {
	 	//formSubmit("system_admin/userListAction.do?online=1","_self");	
	}
</script>
 
<body>
<form name="form2">
<!-- 工具栏部分 ToolBar -->
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="view"><a href="#">查看</a></li>
<li id="new"><a href="#">新建</a></li>
<li id="update"><a href="#">修改</a></li>
<li id="delete"><a href="#">删除</a></li>
<!-- <li id="search"><a href="#">打印报表</a></li> -->
<li id="dosearch"><a href="#">重置密码</a></li>
 
</ul>
    </div>
</div>
</div>
</div>
     
<!-- 页面主体部分（列表等） -->    
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        <h2 style="float:left">用户管理 </h2> 
        <div style="text-align:right;font-weight:normal;font-size:11px;color:gray;padding-top:6px;">
		</div>
    </div> 
    </div>
    </div>
</div>
	
		
		 
<div class="eXtremeTable" >
<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
	<thead>
	<tr style="padding: 0px;" >
		<td colspan="10" >
		<table border="0"  cellpadding="0"  cellspacing="0"  width="100%" >
			<tr>
				<td class="compactToolbar"  align="right" >
				<table border="0"  cellpadding="1"  cellspacing="2" >
					<tr>
					<td><img src="/back/images/table/firstPageDisabled.gif"  style="border:0"  alt="第一页" /></td>
					<td><img src="/back/images/table/prevPageDisabled.gif"  style="border:0"  alt="上一页" /></td>
					<td><a><img src="/back/images/table/nextPage.gif"  style="border:0"  title="下一页"  alt="下一页" /></a></td>
					<td><a><img src="/back/images/table/lastPage.gif"  style="border:0"  title="最后页"  alt="最后页" /></a></td>
					<td><img src="/back/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><select name="ec_rd"  onchange="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_crd.value=this.options[this.selectedIndex].value;document.forms.form2.ec_p.value='1';document.forms.form2.setAttribute('action', 'userListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()" >
				<option value="10"  selected="selected">10</option><option value="50" >50</option><option value="100" >100</option>
				</select></td>
					<td><img src="/back/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='ec';document.forms.form2.ec_ev.value='xls';document.forms.form2.ec_efn.value='presidents.xls';document.forms.form2.setAttribute('action', 'userListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()">
					<img src="/back/images/table/xls.gif"  style="border:0"  title="Export Excel"  alt="Excel" onclick="download()"/></a></td>
					<!--导出 -->
					</tr>
				</table></td>
			</tr>
		</table>
		</td>
	</tr>		
 
	<tr>
		<td class="tableHeader" >用户名</td>
		<td class="tableHeader" >真实姓名</td>
		<td class="tableHeader" >性别</td>
		<td class="tableHeader" >年龄</td>
		<td class="tableHeader" >邮箱</td>
		<td class="tableHeader" >手机号</td>
		
		
		
	</tr>
	<tbody class="tableBody" >

	<c:forEach items="${userList}" var="u" varStatus="status">
		<tr class="odd" onmouseover="this.className='highlight'" onmouseout="this.className='odd'">
			<td>${u.username}</td>
			<td>${u.userInfo.name}</td>
			<td>${u.userInfo.gender}</td>
			<td>${u.userInfo.age}</td>
			<td>${u.userInfo.email}</td>
			<td>${u.userInfo.telephone}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</div>
 
 
</form>
</body>
</html>

