<%@page import="com.kszit.dareport.web.controle.test.*" %>
<%@page pageEncoding="utf-8" %>
<%
System.out.println("context path:"+request.getContextPath());
%>
<% String path = request.getContextPath(); String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %> 
<base href="<%=basePath%>">
<html>
<body>
<h2>Hello World!</h2>
<img alt="" src="test.gif">中文
</body>
</html>
