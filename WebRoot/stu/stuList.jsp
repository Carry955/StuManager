<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN">
<html>
  <head>
  <base href="<%=basePath%>">
    <title>学生列表</title>
   	<link rel="stylesheet" type="text/css" href="<%=basePath %>stu/css/stuList.css">
  </head>
  <body>
  <%
  	if(request.getSession().getAttribute("username") == null){
  		response.sendRedirect("../user/login.jsp");
  	}
  %>
  <div class="head-title">学生信息列表</div>
  <div class="bg-box">
  	<input class="addstu" type="button" value="学生登记 ＋" onClick="location='<%=basePath %>stu/addStu.jsp'">
	  	<table class="list-box">
	  		<tr class="head-line">
	  			<td>学号</td>
	  			<td>姓名</td>
	  			<td>性别</td>
	  			<td>入学年份</td>
	  			<td>籍贯</td>
	  			<td>手机号</td>
	  			<td>专业</td>
	  			<td colspan="2" width="140px">操作</td>
	  		</tr>
	  		<form>
	  		<s:iterator value="#request.stus" var="stu">
	  			<tr>
	  				<td><s:property value="#stu.id"/></td>
	  				<td><s:property value="#stu.name"/></td>
	  				<td><s:property value="#stu.gender"/></td>
	  				<td><s:date name="#stu.enteryear" format="yyyy" /></td>
	  				<td><s:property value="#stu.nativeplace"/></td>
	  				<td><s:property value="#stu.phone"/></td>
	  				<td><s:property value="#stu.major"/></td>
	  				<td width="70px"><input class="button" type="button" value="编辑" onClick="location='<%=basePath %>stu/modifyStu?stu.id=<s:property value="#stu.id"/>'"></td>
	  				<td width="70px"><input class="button" type="button" value="删除" onClick="location='<%=basePath %>stu/delStu?stu.id=<s:property value="#stu.id"/>'"></td>
	  				</form>
	  			</tr>
	  		</s:iterator>
	  		</form>
  		</table>
  	</div>
  </body>
</html>