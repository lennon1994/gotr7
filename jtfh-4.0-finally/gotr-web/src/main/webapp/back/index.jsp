<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
	<title>后台管理系统</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/back/assets/css/dpl-min.css" rel="stylesheet" type="text/css" />
	<link href="/back/assets/css/bui-min.css" rel="stylesheet" type="text/css" />
	<link href="/back/assets/css/main-min.css" rel="stylesheet" type="text/css" />

</head>
<body>

<div class="header">

	<div class="dl-title">
		<a href="http://www.builive.com" title="文档库地址" target="_blank"><!-- 仅仅为了提供文档的快速入口，项目中请删除链接 -->
			<span class="lp-title-port">后台</span><span class="dl-title-text">管理系统</span>
		</a>
	</div>

	<!--c:if -->


	<div class="dl-log">欢迎${user_session.username}回来<span class="dl-log-user">${username}</span><a href="/backLogout" title="退出系统" class="dl-log-quit">[退出]</a><a href="http://http://www.builive.com/" title="文档库" class="dl-log-quit">文档库</a>
	</div>


</div>








<div class="content">
	<div class="dl-main-nav">
		<div class="dl-inform"><div class="dl-inform-title">贴心小秘书<s class="dl-inform-icon dl-up"></s></div></div>
		<ul id="J_Nav"  class="nav-list ks-clear">
			<li class="nav-item dl-selected"><div class="nav-item-inner nav-home">首页</div></li>
			<li class="nav-item"><div class="nav-item-inner nav-order">景点管理</div></li>
			<li class="nav-item"><div class="nav-item-inner nav-inventory">角色管理</div></li>
			<li class="nav-item"><div class="nav-item-inner nav-supplier">权限管理</div></li>
		</ul>
	</div>
	<ul id="J_NavContent" class="dl-tab-conten">

	</ul>
</div>

<script type="text/javascript" src="/back/assets/js/jquery-1.8.1.min.js"></script>
<script type="text/javascript" src="/back/assets/js/bui.js"></script>
<script type="text/javascript" src="/back/assets/js/config.js"></script>

<script>
	BUI.use('common/main',function(){
		var config = [{
			id:'menu',
			homePage : 'code',
			menu:[{
				text:'首页内容',
				items:[
					{id:'code',text:'首页代码',href:'/back/list',closeable : false},
					{id:'main-menu',text:'顶部导航',href:'main/menu.html'},
					{id:'second-menu',text:'右边菜单',href:'main/second-menu.html'},
					{id:'dyna-menu',text:'动态菜单',href:'main/dyna-menu.html'}
				]
			},{
				text:'页面操作',
				items:[
					{id:'operation',text:'页面常见操作',href:'main/operation.html'},
					{id:'quick',text:'页面操作快捷方式',href:'main/quick.html'}
				]
			},{
				text:'文件结构',
				items:[
					{id:'resource',text:'资源文件结构',href:'main/resource.html'},
					{id:'loader',text:'引入JS方式',href:'main/loader.html'}
				]
			}]
		},{
			id:'form',
			menu:[{
				text:'景点管理',
				items:[
					{id:'code',text:'查看详情',href:'form/code.html'},
					{id:'example',text:'景点处理',href:'form/example.html'},
					{id:'introduce',text:'删除',href:'form/introduce.html'},
					{id:'valid',text:'表单基本验证',href:'form/basicValid.html'},
					{id:'advalid',text:'表单复杂验证',href:'form/advalid.html'},
					{id:'remote',text:'远程调用',href:'form/remote.html'},
					{id:'group',text:'表单分组',href:'form/group.html'},
					{id:'depends',text:'表单联动',href:'form/depends.html'}
				]
			},{
				text:'成功失败页面',
				items:[
					{id:'success',text:'成功页面',href:'form/success.html'},
					{id:'fail',text:'失败页面',href:'form/fail.html'}

				]
			},{
				text:'可编辑表格',
				items:[
					{id:'grid',text:'可编辑表格',href:'form/grid.html'},
					{id:'form-grid',text:'表单中的可编辑表格',href:'form/form-grid.html'},
					{id:'dialog-grid',text:'使用弹出框',href:'form/dialog-grid.html'},
					{id:'form-dialog-grid',text:'表单中使用弹出框',href:'form/form-dialog-grid.html'}
				]
			}]
		},{
			id:'search',
			menu:[{
				text:'角色管理',
				items:[
					{id:'code',text:'角色处理',href:'search/code1.html'},
					{id:'example',text:'搜索页面示例',href:'search/example.html'},
					{id:'example-dialog',text:'搜索页面编辑示例',href:'search/example-dialog.html'},
					{id:'introduce',text:'搜索页面简介',href:'search/introduce.html'},
					{id:'config',text:'搜索配置',href:'search/config.html'}
				]
			},{
				text : '更多示例',
				items : [
					{id : 'tab',text : '使用tab过滤',href : 'search/tab.html'}
				]
			}]
		},{
			id:'detail',
			menu:[{
				text:'权限管理',
				items:[
					{id:'code',text:'权限处理',href:'detail/code.html'},
					{id:'example',text:'详情页面示例',href:'detail/example.html'},
					{id:'introduce',text:'详情页面简介',href:'detail/introduce.html'}
				]
			}]
		}];

		new PageUtil.MainPage({
			modulesConfig : config
		});
	});
</script>
</body>
</html>
