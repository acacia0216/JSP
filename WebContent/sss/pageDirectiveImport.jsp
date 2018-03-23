<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>page 디렉티브 연습 - import 속성</title>
</head>
<body>
<h2>page디렉티브 연습 - import속성</h2>
<%
Timestamp now = new Timestamp(System.currentTimeMillis());
SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
SimpleDateFormat tf = new SimpleDateFormat("hh-mm-ss");
String strDate = format.format(now);
String strTime = format.format(now);
%>
오늘은 <%=strDate %>입니다.<br>
현재시간은 <%=strTime %>입니다.<br>
<%=now %>

</body>
</html>