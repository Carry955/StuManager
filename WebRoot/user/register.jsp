<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>用户注册</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>user/css/register.css">
  </head>
  <body>
  	<div class="form-box">
  		<div class="title">注册</div>
	  	<form method="post" action="<%=basePath %>user/register">
	  		<div>
	  			<span>用户名</span><s:textfield name="admin.username"/>
	  		</div>
	  		<div>
	  			<span>密码</span><s:textfield type="password" name="admin.password"/>
	  		</div>
		    <div>
	  			<span>确认密码</span><s:textfield type="password" name="repassword"/>
	  		</div>
		    <div>
	  			<span>邮箱地址</span><s:textfield name="admin.email"/>
	  		</div>
		    <input class="button" type="submit">
	  	</form>
	</div>
  </body>
</html>