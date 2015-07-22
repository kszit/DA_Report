<%@page import="com.kszit.dareport.web.controle.test.*" %>
<%@page pageEncoding="gbk" %>
<%
System.out.println("context path:"+request.getContextPath());
%>
<% String path = request.getContextPath(); String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %> 
<base href="<%=basePath%>">
<html>
<body>
<h2>Hello World!</h2>
<img alt="" src="test.gif">жпнд
</body>
</html>
