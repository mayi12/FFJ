<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="/static/lib/bootstrap/css/bootstrap.css" >
	<link rel="stylesheet" href="/static/css/index.css">
	<link rel="stylesheet" href="/static/css/header.css">
	<link rel="stylesheet" href="/static/css/footer.css">
	<link rel="stylesheet" href="/static/css/personInfo.css">

</head>

<body>
<!-- 头部区域 -->
<header>
	<!-- 导航条 -->
	<nav class="navbar navbar-nwpu">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Brand</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#">首页 <span class="sr-only">(current)</span></a></li>
	        <li><a href="#">职位</a></li>
	        <li><a href="#">职位</a></li>
	        <li><a href="#">职位</a></li>
	        <li><a href="#">职位</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">消息</a></li>
	        <li class="dropdown">
	          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">用户昵称 <span class="caret"></span></a>
	          <ul class="dropdown-menu dropdown-mean-nwpu">
	            <li><a href="#">个人中心</a></li>
	            <li><a href="#">账号设置</a></li>
	            <li><a href="#">修改密码</a></li>
	            <li role="separator" class="divider"></li>
	            <li><a href="#">退出登录</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	<!-- /导航条 -->

</header>
<!--/头部区域  -->


<!-- 个人信息 -->
<section id="personInfo-session">
	<div class="container personInfo">
		<div class="col-md-8 col-md-offset-2 col-sm-8 col-sm-offset-2 col-xs-10 col-xs-offset-1 personInfo-form">
			<form>
			  <div class="personInfo-form-title">基本信息</div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">昵称</label>
			    <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Email" value="小明">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail2">学号</label>
			    <input type="text" class="form-control" id="exampleInputEmail2" placeholder="Email" value="2017303083">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail3">年龄</label>
			    <input type="text" class="form-control" id="exampleInputEmail3" placeholder="Email" value="21">
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail4">校区</label>
			    <div class="dropdown" id="exampleInputEmail4">
				  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
				    长安校区
				    <span class="caret"></span>
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
				    <li><a href="#">长安校区</a></li>
				    <li role="separator" class="divider"></li>
				    <li><a href="#">友谊校区</a></li>
				  </ul>
			  	</div>
			  </div>
			  <button type="submit" class="btn btn-default personInfo-btn">修改</button>
			  <button type="submit" class="btn btn-default personInfo-btn personInfo-btn-return">返回</button>
			</form>
		</div>
	</div>
</section>
<!-- /个人信息 -->


<!-- footer -->
<footer id="footer">
	<div class="container hidden-xs hidden-sm">
		<div class="col-md-2 footer-item">
			<dl>企业服务</dl>
			<dd>
				<a href="">职业搜索</a>
				<a href="">新闻资讯</a>
				<a href="">NWPU招聘</a>
			</dd>
		</div>
		<div class="col-md-2 footer-item">
			<dl>使用与帮助</dl>
			<dd>
				<a href="">用户协议与隐私政策</a>
				<a href="">防骗指南</a>
				<a href="">职位发布规则</a>
				<a href="">使用帮助</a>
			</dd>
		</div>
		<div class="col-md-4 footer-item">
			<dl>联系NWPU招聘</dl>
			<dd>
				<a href="">陕西NWPU校园招聘</a>
				<a href="">公司地址 陕西省西安市长安区西北工业大学</a>
				<a href="">联系电话 14792076163</a>
				<a href="">违法和不良信息举报邮箱 1249248952@qq.com</a>
			</dd>
		</div>
		<div class="col-md-4  footer-item footer-companyInfo">
			<dl>NWPU招聘</dl>
			<dd>
				<p>
					企业服务热线和举报电话
					<span>400 000 000</span>
				</p>
				<p>
					工作日
					<span>8:00-24:00</span>
				</p>
				<p>
					休息9:30-18:30
					<span></span>
				</p>
			<!-- 	<p class="footer-icon">
					<a href=""></a>
				</p> -->
			</dd>
		</div>
	</div>
</footer>
<!-- /footer -->

<!-- copyright -->
<div class="copyright container hidden-xs hidden-sm">
	<p>
		<span>Copyright © 2019 NWPU招聘</span>
		<span>京ICP备14013441号-5</span>
		<span>京ICP证150923号</span>
		<span><a href=""><i class="glyphicon glyphicon-bullhorn"></i> 电子营业执照</a></span>
		<span><a href=""><i class="glyphicon glyphicon-align-justify"></i> 京公网安备11010502032801</a></span>
		<span><a href="http://sdwj.zhipin.com/web/index.html"><i class="glyphicon glyphicon-user"></i> 首都网警</a></span>
		<span><a href=""><i class="glyphicon glyphicon-tag"></i> 人力资源服务许可证</a></span>
	</p>
</div>
<!-- /copyright -->

<script type="text/javascript" src="/static/lib/jquery/jquery.js"></script>
<script type="text/javascript" src="/static/lib/bootstrap/js/bootstrap.js"></script>
</body>
</html>