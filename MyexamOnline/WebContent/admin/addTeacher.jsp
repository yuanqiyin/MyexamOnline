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
	background-image: url(../picture/update.jpg);
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
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown">教师管理<strong
									class="caret"></strong></a>
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
				<div class="col-md-6 col-md-offset-3">
					<h1 class="page-header text-center">
						<font color="white">教师添加</font>
					</h1>
					<form class="form-horizontal" role="form" action="../ManagementTeacher?method=addTeacher" method="post">
						<div class="form-group">
							<label for="firstname" class="col-sm-2 control-label"><font
								color="white">账号</font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="tid"
									placeholder="请输入账号" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">姓名</font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="tname"
									placeholder="请输入姓名" required="required">
							</div>
						</div>

						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">性别</font></label>
							<div class="col-sm-10">
								<input type="radio" id="sex" name="sex" value="男">男 <input
									type="radio" id="sex" name="sex" value="女">女
							</div>
						</div>

						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">密码</font></label>
							<div class="col-sm-10">
								<input type="password" class="form-control" name="pwd"
									placeholder="请输入密码" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">电话</font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="phone"
									placeholder="请输入电话" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">住址</font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="address"
									placeholder="请输入住址" required="required">
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">生日</font></label>
							<div class="col-sm-10">
								<input type="date" class="form-control" name="birthdate" />
							</div>
						</div>
						<div class="form-group">
							<label for="lastname" class="col-sm-2 control-label"><font
								color="white">邮件</font></label>
							<div class="col-sm-10">
								<input type="text" class="form-control" name="email"
									placeholder="请输入邮件" required="required">
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-offset-3 col-sm-6">
								<button type="submit" class="btn btn-primary btn-lg btn-block"
									onclick="myFunction()">添加</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>