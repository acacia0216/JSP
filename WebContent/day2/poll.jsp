<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>설문조사 투표</title>
</head>
<body>
	<h2>인기투표</h2>

	<h2>설문조사</h2>
	가장 좋아하는 아이돌 그룹은?
	<form action="../day2/poll_data.jsp" method="post">
		<input type="radio" value="0">레드벨벳
		<input type="radio" value="1">트와이스
		<input type="radio" value="2">빅뱅
		<input type="radio" value="3">워너원
		<input type="radio" value="4">BTS
		<input type="submit" value="투표">
	</form>
</body>
</html>