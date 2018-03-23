<%@page import="java.sql.Timestamp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스크립트릿 예제 - 활용</title>
</head>
<body>
<%Timestamp now = new Timestamp(System.currentTimeMillis()); %>

현재는 <%=now.getHours() %>시 <%=now.getMinutes() %>분 <%=now.getSeconds() %>초 입니다.

</body>
</html>