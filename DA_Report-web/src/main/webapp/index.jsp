<%
System.out.println("context path:"+request.getContextPath());

%>
<% String path = request.getContextPath(); String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; %> 
<base href="<%=basePath%>">
<html>
<body>
<h2>Hello World!</h2>
<img alt="" src="test.gif">
</body>
</html>
