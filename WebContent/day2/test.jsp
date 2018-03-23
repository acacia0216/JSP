<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 제공</title>
</head>
<body>
	<%
	/* 받아오는곳 */
	String result = "";
	result = request.getParameter("result");
	%>
	<form action="test1.jsp">
	<!-- 푸시하는곳 -->
	<input type="text" name="num1">
	<input type="text" name="op" size="1">
	<input type="text" name="num2">
	<input type="text" name="res" value="<%=result%>">
	<input type="submit" value="계산" >
	</form>
</body>
</html>