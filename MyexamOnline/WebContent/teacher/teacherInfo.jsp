<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.sql.*"
    import="henu.bean.*"
    import="henu.others.*"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
<title>在线考试系统</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script src="../js/jquery-2.1.4.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
body{background-image: url(../picture/update.jpg);
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
      <a class="navbar-brand" href="teacherHome.jsp">在线考试系统</a>
    </div>
    <div>
						<%
							subject s = new subject();
							List<Subject> cls = s.getSubject();
						%>
					</div>
     <div>
        <ul class="nav navbar-nav">
            <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">试题管理<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="addQuestion.jsp">添加试题</a>
								</li>
								<li>
									 <a href="../ManagementQuestion?method=findchoiceQuestion">选择题维护</a>
								</li>
								<li>
									 <a href="../ManagementQuestion?method=findfillQuestion">填空题维护</a>
								</li>
								<li>
									 <a href="../ManagementQuestion?method=findjudgeQuestion">判断题维护</a>
								</li>
								<li>
									 <a href="../ManagementQuestion?method=findsaQuestion">简答题维护</a>
								</li>
							</ul>
			</li>
			<li>
							 <a href="makePaper.jsp">发布试卷</a>
			</li>
			<li>
							 <a href="../ReleaseHistory?method=findpaperHistory">历史发布</a>
			</li>
			<li>
							 <a href="../Statistics?method=findStatistics">统计情况</a>
			</li>
			<li><form action="../ManagementQuestion?method=findsaAnswer"
									method="post">
									
									<select class="form-control" name="subjectid">

										<%
											if (cls == null || cls.size() == 0) {
												out.println("<option>还没有课程~</option>");
											} else {
												for (Subject sr : cls) {
										%>
										<option value=<%=sr.getSubjectid()%>><%=sr.getSubjectname()%></option>
										<%
											}
											}
										%>
									</select></li>
									<li><input type="submit" value="批阅试卷"></li>
								</form>
        </ul>
    </div>
    <ul class="nav navbar-nav navbar-right">
           <li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>我的<strong class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li>
									 <a href="../PersonalInfo?method=findTeacherInfo">个人信息</a>
								</li>
								<li>
									 <a href="updateTPW.jsp">修改密码</a>
								</li>
								<li>
									 <a href="../LoginServlet?usertype=logout">注销</a>
								</li>
							</ul>
			</li>
    </ul>
</div>
</nav>
				</div>
<%Teacher r = (Teacher)session.getAttribute("teacherInfo"); 
System.out.print(r.getTid());
%>
		
<div class="col-md-4 col-md-offset-4">
      <h1 class="page-header text-center"><font color="white">个人信息</font></h1>
<form class="form-horizontal" role="form" action="../PersonalInfo?method=updateTeacherInfo" method="post">
  <div class="form-group">
    <label for="firstname" class="col-sm-2 control-label"><font color="white">账号</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name ="sid" readonly="readonly" value="<%=r.getTid() %>" />
    </div>
  </div>
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">姓名</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "sname" readonly="readonly" value="<%=r.getTname() %>">
    </div>
  </div>
 <%if(r.getSex()==null||r.getSex().equals("")){ %>
  <div>
   <label for="lastname" class="col-sm-2 control-label"><font color="white">性别</font></label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="男" ><font color="white"> 男</font>
	</label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="女" ><font color="white"> 女</font>
	</label>
  </div>
<%}else if(r.getSex().equals("女")){ %>
<div>
 <label for="lastname" class="col-sm-2 control-label"><font color="white">性别</font></label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="男"><font color="white"> 男</font>
	</label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="女" checked> <font color="white">女</font>
	</label>
  </div>
<%}else{ %>
<div>
 <label for="lastname" class="col-sm-2 control-label"><font color="white">性别</font></label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="男" checked><font color="white"> 男</font>
	</label>
	<label class="radio-inline">
		<input type="radio" name="sex" value="女" > <font color="white">女</font>
	</label>
  </div>
<%} %>

  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">电话</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "phone" value="<%=r.getPhone() %>">
    </div>
  </div>
  

  
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">住址</font></label>
    <div class="col-sm-10">
      <input type="text" class="form-control" name = "address" value="<%=r.getAddress() %>">
    </div>
  </div>
  
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">生日</font></label>
    <div class="col-sm-10">
     <input type="date" class="form-control" name = "birthdate" value="<%=r.getBirthdate() %>" />     
    </div>
  </div>
  
  <div class="form-group">
    <label for="lastname" class="col-sm-2 control-label"><font color="white">邮箱</font></label>
    <div class="col-sm-10">
    <input type="email" class="form-control" name = "email" value="<%=r.getEmail() %>" />
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-primary btn-lg btn-block" >保存修改</button>
    </div>
  </div>
    </div>
</form>	
</div>

	</div>
</div>
</body>
</html>