<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 전송 using form tag</title>
</head>
<body>
	<!-- 데이터를 보내는 데 사용되는 태그 -->
	<form action="data_service.jsp" method="post"><!-- data_service로 보내라 -->
		      ID : <input type="text" name="id"><br>
		PassWord : <input type="text" name="password">
		<input type="submit" value="전송">
	</form>
</body>
</html>