<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 등록</title>
</head>
<body>
	<table>
		<h2>회원가입</h2>
		<form action="process_regist.jsp" method="post">
			<tr>
				<td align="right">ID : <input type="text" name="id"></td>
			</tr>
			<br>
			<tr>
				<td align="right">PW : <input type="password" name="pw"></td>
			</tr>
			<br>
			<tr>
				<td align="right">이름 : <input type="text" name="fullname"></td>
			</tr>
			<br>
			<tr>
				<td align="right"><input type="submit" value="등록"></td>
			</tr>
		</form>
	</table>
</body>
</html>