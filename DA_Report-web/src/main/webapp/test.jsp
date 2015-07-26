<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
System.out.println("context path:"+request.getContextPath());
String target = request.getParameter("type");
StringBuffer sb = new StringBuffer();
if(target.contains("category")){//类别
	sb.append("{\"root\":[{\"id\":\"idValue1\",\"name\":\"类别1\"},{\"id\":\"idValue2\",\"name\":\"类别2\"},{\"id\":\"idValue1\",\"name\":\"类别1\"},{\"id\":\"idValue2\",\"name\":\"类别2\"},{\"id\":\"idValue1\",\"name\":\"类别1\"},{\"id\":\"idValue2\",\"name\":\"类别2\"},{\"id\":\"idValue1\",\"name\":\"类别1\"},{\"id\":\"idValue2\",\"name\":\"类别2\"},{\"id\":\"idValue1\",\"name\":\"类别1\"},{\"id\":\"idValue2\",\"name\":\"类别2\"}]}");
}else if(target.contains("articleInCategory")){//类别中文章
	
	int begIndex = Integer.parseInt(request.getParameter("begIndex"));
	int countOnece = Integer.parseInt(request.getParameter("countOnece"));
	
	sb.append("{\"catigory\":{\"id\":\"idvalue\",\"name\":\"类别名称\"},\"articlesCount\":\"200\",\"article\":[");
	for(int i=0;i<countOnece-1;i++){
		sb.append("{\"id\":\"1\",\"title\":\"文章标题"+(begIndex+i)+"\",\"category\":\"文章类别\",\"publishDate\":\"publishDateValue\",\"content\":\"文章内容<a href>连接</a>\"},");
	}
	sb.append("{\"id\":\"1\",\"title\":\"文章标题"+(begIndex+countOnece)+"\",\"category\":\"文章类别\",\"publishDate\":\"publishDateValue\",\"content\":\"文章内容<a href>连接</a>\"}");
	
	sb.append("]}");
}else if(target.contains("article")){//文章详细
	sb.append("{\"id\":\"1\",\"title\":\"文章标题\",\"category\":\"文章类别\",\"publishDate\":\"publishDateValue\",\"content\":\"文章内容<a href>连接</a>\"}");
}
out.print(sb.toString());
%>