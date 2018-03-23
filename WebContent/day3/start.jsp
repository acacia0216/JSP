<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫 페이지</title>
</head>
<body>
	<h1>웹 서비스를 선택하세요</h1>
<form action="middle.jsp" method="post"	>
<input type="radio" name="select" value="0"> 설문조사
<input type="radio" name="select" value="1"> 달력
<input type="radio" name="select" value="2"> 로그인
<input type="submit" value="선택">
</form>
</body>
</html>