<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>표현식 예제 - 레퍼런스 타입 출력</title>
</head>
<body>
<h2>표현식 예제 - 레퍼런스 타입 출력</h2>
<%StringBuffer sf = new StringBuffer("Reshiram"); 
sf.reverse();
out.println("객체의 내용:"+sf.toString());%>
</body>
</html>