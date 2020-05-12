<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE HTML PUBLIC "-//W3C//Dinput HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>信息编辑</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath %>stu/css/detail.css">
  </head>
  <body>
  <%
  	if(request.getSession().getAttribute("username") == null){
  		response.sendRedirect("../user/login.jsp");
  	}
  %>
  	<div class="title">学生信息修改</div>
  	<div class="form-box">
	  	<form method="post" action="<%=basePath %>stu/updateStu">
	  	<s:iterator value="#request.stu" status="stu">
	  		<div>
	  			<span>学号</span><s:textfield readonly="readonly" name="stu.id" value="%{id}"/>
	  		</div>
			<div>
				<span>姓名</span><s:textfield name="stu.name" value="%{name}"/>
			</div>
			<div>
				<span>性别</span>
				<select name="stu.gender">
					<%
						String gender =  (String)request.getAttribute("gender");
						String male = "selected";
						String female = "";
						if("女".equals(gender)){
							male="";
							female="selected";
						}
					%>
					<option value="男" <%=male %> >男</option>
					<option value="女" <%=female %>>女</option>
					
				</select>
			</div>
			<div>
				<span>入学年份</span>
				<input type="date" name="stu.enteryear" value='<s:date name="enteryear" format="yyyy-MM-dd"/>'/>
			</div>
			<div>
				<span>户籍地</span><s:textfield name="stu.nativeplace" value="%{nativeplace}"/>
			</div>
			<div>
				<span>电话</span><s:textfield name="stu.phone" value="%{phone}"/>
			</div>
			<div>
				<span>专业</span><s:textfield name="stu.major" value="%{major}"/>
			</div>
			<input class="button" type="submit" value="修改"/>
	  	</s:iterator>
	  	</form>
  	</div>
  </body>
</html>