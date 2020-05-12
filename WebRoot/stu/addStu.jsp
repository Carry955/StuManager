<%@page import="org.apache.struts2.ServletActionContext"%>
<%@page import="org.apache.catalina.core.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="org.apache.struts2.ServletActionContext"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>学生登记</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>stu/css/addStu.css">
  </head>
  <body>
  <%
  	if(request.getSession().getAttribute("username") == null){
  		response.sendRedirect("../user/login.jsp");
  	}
  %>
  <div>
  </div>
  	<div class="title">学生登记</div>
  	<div class="form-box">
	  	<form method="post" action="<%=basePath %>stu/addStu">
	  		<div>
	  			<span>学号</span><s:textfield name="stu.id"/>
	  		</div>
	  		<div>
	  			<span>姓名</span><s:textfield name="stu.name"/>
	  		</div>
			<div>
				<span>性别</span>
				<select name="stu.gender">
					<option value="男">男</option>
					<option value="女">女</option>
				</select>
				<!--<s:textfield type="select" name="stu.gender"/>-->
			</div>
			<div>
				<span>入学年份</span><s:textfield type="date" name="stu.enteryear"/>
			</div>
			<div>
				<span>户籍地</span><s:textfield name="stu.nativeplace"/>
			</div>
			<div>
				<span>电话</span><s:textfield name="stu.phone"/>
			</div>
			<div>
				<span>专业</span><s:textfield name="stu.major"/>
			</div>
			<input class="button" type="submit" value="提交"/>
	  	</form>
  	</div>
  </body>
</html>