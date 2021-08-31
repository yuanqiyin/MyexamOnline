<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"
	import="henu.bean.*" import="henu.others.*"%>

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
							<li class="dropdown active"><a href="#"
								class="dropdown-toggle" data-toggle="dropdown">试题管理<strong
									class="caret"></strong></a>
								<ul class="dropdown-menu">
									<li><a href="addQuestion.jsp">添加试题</a></li>
									<li><a
										href="../ManagementQuestion?method=findchoiceQuestion">选择题维护</a>
									</li>
									<li><a
										href="../ManagementQuestion?method=findfillQuestion">填空题维护</a>
									</li>
									<li><a
										href="../ManagementQuestion?method=findjudgeQuestion">判断题维护</a>
									</li>
									<li><a href="../ManagementQuestion?method=findsaQuestion">简答题维护</a>
									</li>
								</ul></li>
							<li><a href="makePaper.jsp">发布试卷</a></li>
							<li><a href="../ReleaseHistory?method=findpaperHistory">历史发布</a>
							</li>
							<li><a href="../Statistics?method=findStatistics">统计情况</a></li>
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
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>我的<strong
								class="caret"></strong></a>
							<ul class="dropdown-menu">
								<li><a href="../PersonalInfo?method=findTeacherInfo">个人信息</a>
								</li>
								<li><a href="updateTPW.jsp">修改密码</a></li>
								<li><a href="../LoginServlet?usertype=logout">注销</a></li>
							</ul></li>
					</ul>
				</div>
				</nav>
			</div>

			简答题和参考答案：
			<div class="jumbotron">
				<%
				List<ShortAnswerQuestions> record= (List<ShortAnswerQuestions>) session.getAttribute("Questions");
				%>
				<%
					if (record == null || record.size() == 0) {
						out.println("<center><strong>还没有试题哦~</strong></center>");
					} else {
				%>
				<table class="table table-hover table-bordered" id="table">
					<thead>
						<tr>
							<th>编号</th>
							<th>问题</th>
							<th>答案</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (ShortAnswerQuestions r : record) {
						%>
						<tr class="warning">
							<td><%=r.getS_id()%></td>
							<td><%=r.getS_question()%></td>
							<td><%=r.getS_answer()%></td>
						</tr>
						<%
							}
							}
						%>
					</tbody>
				</table>
			</div> 

			简答题的学生答案：
			<div class="jumbotron">
				<%
					List<StuAnswer> record1 = (List<StuAnswer>) session.getAttribute("list");
				    
					//List<ShortAnswerQuestions> record2 = (List<ShortAnswerQuestions>) session.getAttribute("list");
				%>



				<%
					if (record1 == null || record1.size() == 0) {
						out.println("<center><strong>还没有试题哦~</strong></center>");
					} else {
				%>
				<table class="table table-hover table-bordered" id="table">
					<thead>
						<tr>
							<th>学生id</th>
							<th>问题</th>
							<th>学生答案1</th>
							<th>问题</th>
							<th>学生答案2</th>
							<th>分数</th>
							<th>操作</th>
							<th>已提交分数</th>
						</tr>
					</thead>
					<tbody>
						<%
							for (StuAnswer r : record1) {
						%>
						<tr class="warning">
							<td><%=r.getSid()%></td>
							<td><%=r.getS1() %></td>
							<td><%=r.getSa_answer1()%></td>
							<td><%=r.getS2() %></td>
							<td><%=r.getSa_answer2()%></td>

							<td>
								<form method="post"
									action="../ManagementQuestion?method=addSaScore&a_id=<%=r.getA_id()%>&sid=<%=r.getSid()%>&paperid=<%=r.getPaperid()%>">
									<input type="text" name="scorses" id="scorses">
							</td>
							<td><input type="submit" value="提交"> </td><td><%=r.getScorses()%>
							</td>
						
							</form>


						</tr>

						<!--orderList/-->
						<%
							}
							}
						%>
					</tbody>
				</table>
			</div>


		</div>
	</div>
	<script type="text/javascript">
function values(s_id) {  
    var id=0;  
    while(1)
    	{
    	if(sid==parseInt(document.getElementById("table").rows[id].cells[0].innerText))
    		break;
    	id++;
    	}
    //获取表格中的一行数据  
    var s_id = document.getElementById("table").rows[id].cells[0].innerText;  
    var s_question = document.getElementById("table").rows[id].cells[1].innerText;  
    var s_answer = document.getElementById("table").rows[id].cells[2].innerText;  
    //alert(c_question);
    //向模态框中传值  
    document.getElementById("id").value = s_id;
    document.getElementById("saQuestion").value = f_question;
    document.getElementById("saAnswer").value = f_answer;
    
}  
</script>
</body>
</html>