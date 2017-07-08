<%--
  Created by IntelliJ IDEA.
  User: CGB-yz
  Date: 2017/4/23
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cts" value="${pageContext.request.contextPath}"/>
<html xmlns="/www.w3.org/1999/xhtml">
<head id="Head1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>注册</title>

    <meta name="Copyright" content="aakuan.cn" />
    <link href="${cts}/register/images/web.css?v20150217" rel="stylesheet" />
    <link rel="stylesheet" href="${cts}/register/css/stylesheets/style.css">
    <link rel="stylesheet" media="screen" href="${cts}/register/css/zzsc.css" />
    <script src="${cts}/register/js/jquery-1.7.2.min.js"></script>

    <script type="text/javascript">
        function hehe(){
            var aa="<div style=' position:relative; top:-120px; width:500px; height:200px; margin-left:32%;border-radius:15px; overflow:hidden;  border: 1px solid #CECFD4;-webkit-box-shadow:#666 0px 0px 10px;'><iframe name='iframe_canvas' src='http:\\\\douban.fm/partner/baidu/doubanradio' scrolling='no' frameborder='0' width='500' height='200'  ></iframe></div>";
            document.getElementById("douban").re
            document.getElementById("douban").innerHTML=aa;
        }
    </script>
    <script>
        function formSubmit (url,sTarget){
            document.forms[0].target = sTarget
            document.forms[0].action = url;
            document.forms[0].submit();
            return true;
        }
    </script>

    <script>
    function checkForm(){
		//非空校验
		var flag = true;
		
		flag = checkNull("username", "用户名不能为空") && flag;
		flag = checkNull("password", "密码不能为空") && flag;
		flag = checkNull("password2", "确认密码不能为空") && flag;
		flag = checkNull("userinfo.name", "昵称不能为空") && flag;
		flag = checkNull("userinfo.age", "年龄不能为空") && flag;
		flag = checkNull("userinfo.email", "邮箱不能为空") && flag;
		
		
		//两次密码是否一致校验
		flag = checkPassword("password", "两次密码不一致") && flag;
		flag = checkEmail("userinfo.email", "邮箱格式不正确") && flag;
		flag = checkEmail("userinfo.telephone", "手机格式不正确") && flag;
		flag = checkName("userinfo.email", "邮箱格式不正确") && flag;
		
		//邮箱格式
		
		return flag;
	}
    
    function checkName(thisobj){
    	
    	var username = thisobj.value;
    	if(!checkNull('username', "用户名不能为空")){
			return;
		}
    	
    	//这里怎么判断如果用户名存在无法完成注册？？
    	
       $.ajax({
    	   type: "POST",
    	   url: "/check/{username}",
    	   data: "username",
    	   success: function(flag){
    	     if(flag =="true"){
    	    	 setMsg("username","用户名可以使用");
    	    	 return true;
    	     }else{
    	    	 setMsg("username","用户名已存在");
    	    	 return false;
    	     }
    	   
    	   }
    	});
   
    }
    
    

        //检查联系方式格式
        function checkPhone(name,msg){
            var reg=/^[0-9]+$/;
            var email=document.getElementsByName(name)[0].value;
            setMsg(name,"");
            if(email==""){
                setMsg(name,"联系方式不能为空");
            }
            if(email!=""){
                if(!reg.test(email)){
                    setMsg(name,msg);
                    return false;
                }
            }
            return true;
        }
        //检查邮箱格式
        function checkEmail(name,msg){
            var reg=/^\w+@\w+(\.\w+)+$/;
            var email=document.getElementsByName(name)[0].value;
            setMsg(name,"");
            if(email==""){
                setMsg(name,"邮箱不能为空");
            }
            if(email!=""){
                if(!reg.test(email)){
                    setMsg(name,msg);
                    return false;
                }
            }
            return true;
        }
        //检查两次密码是否一致
        function checkPassword(name,msg){
            var psd1=document.getElementsByName(name)[0].value;
            var psd2=document.getElementsByName(name+"2")[0].value;
            setMsg(name+"2","");
            if(psd2==""){
                setMsg(name+"2","确认密码不能为空");
            }
            if(psd1!=""&&psd2!=""){
                if(psd1!=psd2){
                    setMsg(name+"2",msg);
                    return false;
                }
            }
            return true;
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
    </script>
</head>

<body>

<script>
    function init()
    {
        container = document.createElement('div');
        container.style.cssText = "background-color: #326696;position:absolute;left:0; top:0;z-index:1;";
        document.body.appendChild(container);
        camera = new THREE.Camera(30, window.innerWidth / window.innerHeight, 1, 1000);
        camera.position.z = 10;
        scene = new THREE.Scene();
        geometry = new THREE.Geometry();
        var texture = THREE.ImageUtils.loadTexture('${cts}/register/images/cloud.png');
        texture.magFilter = THREE.LinearMipMapLinearFilter;
        texture.minFilter = THREE.LinearMipMapLinearFilter;

        var fog = new THREE.Fog(0x4584b4, 100, 800);
        material = new THREE.MeshShaderMaterial({
            uniforms: {
                "map": { type: "t", value: 2, texture: texture },
                "fogColor": { type: "c", value: fog.color },
                "fogNear": { type: "f", value: fog.near },
                "fogFar": { type: "f", value: fog.far },
            },
            vertexShader: document.getElementById('vs').textContent,
            fragmentShader: document.getElementById('fs').textContent,
            depthTest: false
        });

        var plane = new THREE.Mesh(new THREE.Plane(64, 64));
        for (i = 0; i < 8000; i++) {
            plane.position.x = Math.random() * 1000 - 500;
            plane.position.y = -Math.random() * Math.random() * 200 - 15;
            plane.position.z = i;
            plane.rotation.z = Math.random() * Math.PI;
            plane.scale.x = plane.scale.y = Math.random() * Math.random() * 1.5 + 0.5;
            GeometryUtils.merge(geometry, plane);
        }

        mesh = new THREE.Mesh(geometry, material);
        scene.addObject(mesh);

        mesh = new THREE.Mesh(geometry, material);
        mesh.position.z = -8000;
        scene.addObject(mesh);

        renderer = new THREE.WebGLRenderer({ antialias: false });
        renderer.setSize(window.innerWidth, window.innerHeight);
        container.appendChild(renderer.domElement);

        document.addEventListener('mousemove', onDocumentMouseMove, false);
        window.addEventListener('resize', onWindowResize, false);
    }

    function onDocumentMouseMove(event) {
        mouseX = (event.clientX - windowHalfX) * 0.25;
        mouseY = (event.clientY - windowHalfY) * 0.15;
    }

    function onWindowResize(event) {
        camera.aspect = window.innerWidth / window.innerHeight;
        camera.updateProjectionMatrix();
        renderer.setSize(window.innerWidth, window.innerHeight);
    }

    function animate() {
        requestAnimationFrame(animate);
        render();
    }

    function render() {
        position = ((new Date().getTime() - start_time) * 0.03) % 8000;
        camera.position.x += (mouseX - camera.target.position.x) * 0.01;
        camera.position.y += (-mouseY - camera.target.position.y) * 0.01;
        camera.position.z = -position + 8000;
        camera.target.position.x = camera.position.x;
        camera.target.position.y = camera.position.y;
        camera.target.position.z = camera.position.z - 1000;
        renderer.render(scene, camera);
    }

    if ($.support.leadingWhitespace && Detector.webgl)
    {
        // Bg gradient
        var canvas = document.createElement('canvas');
        canvas.width = 32;
        canvas.height = window.innerHeight;
        var context = canvas.getContext('2d');
        var gradient = context.createLinearGradient(0, 0, 0, canvas.height);
        gradient.addColorStop(0, "#1e4877");
        gradient.addColorStop(0.5, "#4584b4");
        context.fillStyle = gradient;
        context.fillRect(0, 0, canvas.width, canvas.height);
        document.body.style.background = 'url(' + canvas.toDataURL('image/png') + ')';

        // Clouds
        var container;
        var camera, scene, renderer, sky, mesh, geometry, material,
                i, h, color, colors = [], sprite, size, x, y, z;
        var mouseX = 0, mouseY = 0;
        var start_time = new Date().getTime();
        var windowHalfX = window.innerWidth / 2;
        var windowHalfY = window.innerHeight / 2;
        init();
        animate();
    } else {
        //Detector.addGetWebGLMessage();
    }
</script>

<script src="src/js/smusic.min.js"></script>
<%--<script>
    new SMusic({
        musicList:musicList
    });

</script>--%>
<link rel="stylesheet" href="src/css/smusic.css"/>



<div class="container" >
    <form id="msform" method="post" action="save.action" onsubmit="return checkForm()"
        style="background-color:#27AE60;position:absolute;
        left:50%;
		top:30%;
		margin:-150px 0 0 -200px;
        z-index: 1500;"
        enctype="multipart/form-data">

        <fieldset>
            <h1 class="fs-title">注册用户</h1>
            <h3 class="fs-subtitle">
                <span id="username_msg"></span>
                <span id="password_msg"></span>
                <span id="password2_msg"></span>
            </h3>

            <input type="text" name="username" placeholder="用户名" onblur="checkName(this)"/>
            <input type="password" name="password" placeholder="密码" onblur="checkNull('password','密码不能为空')"/>
            <input type="password" name="password2" placeholder="确认密码" onblur="checkPassword('password','两次密码不一致')"/>
            <input type="button" name="next" class="next action-button" value="Next" />
        </fieldset>
        <fieldset>
            <h1 class="fs-title">注册用户</h1>
            <h3 class="fs-subtitle">
                <span id="userInfo.name_msg"></span>
                <span id="userInfo.age_msg"></span>
            </h3>

            <input type="text" name="userInfo.name" placeholder="真实姓名" onblur="checkNull('userInfo.name','姓名不能为空')"/>
            <input type="text" name="userInfo.age" placeholder="年龄" onblur="checkNull('userInfo.age','年龄不能为空')"/>
            <select name="userInfo.gender" style=" width:260px;height:40px;padding:2px 5px;margin-bottom:15px">
                <option >男</option>
                <option>女</option>
            </select>
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="button" name="next" class="next action-button" value="Next" />
        </fieldset>
        <fieldset>
            <h1 class="fs-title">注册用户</h1>
            <h3 class="fs-subtitle">
                <span id="userInfo.email_msg"></span>
                <span id="userInfo.telephone_msg"></span>
            </h3>

            <input type="text" name="userInfo.email" placeholder="email" onblur="checkEmail('userInfo.email','邮箱格式不正确')"/>
            <input type="text" name="userInfo.telephone" placeholder="联系方式" onblur="checkPhone('userInfo.telephone','联系方式格式不正确')"/>
            <input type="file" name="photo" placeholder="上传头像"/>
            
            <input type="button" name="previous" class="previous action-button" value="Previous" />
            <input type="submit" name="submit" class="submit action-button" value="Submit"/>
        </fieldset>
    </form>
</div>


</body>
</html>
<script type="text/javascript" src="images/jquery.js"></script>
<script type="text/javascript" src="images/ThreeWebGL.js"></script>
<script type="text/javascript" src="images/ThreeExtras.js"></script>
<script type="text/javascript" src="images/Detector.js"></script>
<script type="text/javascript" src="images/RequestAnimationFrame.js"></script>
<script id="vs" type="x-shader/x-vertex">
			varying vec2 vUv;
			void main() {
				vUv = uv;
				gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
			}
</script>
<script id="fs" type="x-shader/x-fragment">
			uniform sampler2D map;
			uniform vec3 fogColor;
			uniform float fogNear;
			uniform float fogFar;
			varying vec2 vUv;
	    	void main() {
				float depth = gl_FragCoord.z / gl_FragCoord.w;
				float fogFactor = smoothstep( fogNear, fogFar, depth );
				gl_FragColor = texture2D( map, vUv );
				gl_FragColor.w *= pow( gl_FragCoord.z, 20.0 );
				gl_FragColor = mix( gl_FragColor, vec4( fogColor, gl_FragColor.w ), fogFactor );
			}
</script>
<script type="text/javascript" src="${cts}/register/images/cloud.js"></script>
<script src="http://www.jq22.com/jquery/1.9.1/jquery.min.js"></script>
<script src="js/jquery.easing.min.js" type="text/javascript"></script>
<script src="js/zzsc.js" type="text/javascript"></script>
