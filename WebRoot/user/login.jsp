<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>user/css/login.css">
  </head>
  <body>
  	<div class="form-box">
  		<div class="title">登录</div>
	  	<form method="post" action="<%=basePath %>user/login">
	  		<div>
	  			<span>用户名</span><s:textfield name="admin.username"/>
	  		</div>
	  		<!--<input type="text" name="admin.username">-->
	  		<div>
	  			<span>密码</span><s:textfield type="password" name="admin.password"/>
	  		</div>
		    <!--<input type="password" name="admin.password">-->
		    <input class="button" type="submit" value="登录"/>
		    <input class="button" type="submit" formaction="<%=basePath %>user/register.jsp" value="注册"/>
	  	</form>
	</div>
  </body>
</html>