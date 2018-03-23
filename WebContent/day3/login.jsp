<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
</head>
<body>

<form action="login_check.jsp" method="post">
<table>
<tr>
<td align="right">아이디<input type="text" name="id"></td>
</tr>
<tr>
<td align="right">패스워드<input type="password" name="password"></td>
</tr>
<tr>
<td align="right"><input type="submit" value="확인"></td>
</tr>
</table>
</form>

<%
String fail = request.getParameter("fail");
	if(fail == null)
		fail = "";
	else if(fail.equals("0"))
	out.print("비밀번호가 틀렸습니다.");
	else if(fail.equals("1"))
	out.print("회원이 아닙니다.");
%>

</body>
</html>