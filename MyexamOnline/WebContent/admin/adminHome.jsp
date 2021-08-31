<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>在线考试系统</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery-2.1.4.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
body {
	background-image: url(../picture/qianse.jpg);
	background-size: cover;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<nav class="navbar navbar-default" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="adminHome.jsp">在线考试系统</a>
					</div>
					<div>
						<ul class="nav navbar-nav">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">班级管理<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="addClass.jsp">添加班级</a></li>
									<li><a href="../ManagementClass?method=findClass">班级维护</a>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">学生管理<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="addStudent.jsp">添加学生</a></li>
									<li><a href="../ManagementStudent?method=findStudent">学生维护</a>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">教师管理<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="addTeacher.jsp">添加教师</a></li>
									<li><a href="../ManagementTeacher?method=findTeacher">教师维护</a>
									</li>
								</ul></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">学科管理<strong class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="addSubject.jsp">添加学科</a></li>
									<li><a href="../ManagementSubject?method=findSubject">学科维护</a>
									</li>
								</ul></li>
						</ul>
					</div>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>我的<strong
								class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="../PersonalInfo?method=findAdminInfo">个人信息</a>
								</li>
								<li><a href="updateAPW.jsp">修改密码</a></li>
								<li><a href="../LoginServlet?usertype=logout">注销</a></li>
							</ul></li>
					</ul>
				</div>
				</nav>
				<div class="jumbotron">
					<h1>欢迎使用在线考试系统!</h1>
					<p>
						欢迎您管理员！
					</p>

				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-4 column">
				<h2>多题型支持</h2>
				<p>对象化试题模型，支持常见考试题型、根据您的需要，进行灵活配置与扩展。</p>

			</div>
			<div class="col-md-4 column">
				<h2>安全、稳定、高效</h2>
				<p>基于高效的缓存机制，安全、严谨的程序算法开发，支持横向扩展，提升处理能力。</p>
				
			</div>
			<div class="col-md-4 column">
				<h2>统计情况</h2>
				<p>自带核心统计功能，并可导出学生成绩的功能，让您快速掌握考试情况。</p>
				
			</div>
		</div>
	</div>
</body>
</html>