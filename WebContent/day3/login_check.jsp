<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<%String adid = "admin";
String adpw = "1234"; 
String id = request.getParameter("id");
String pw = request.getParameter("password");

if(adid.equals(id))
{
	if(adpw.equals(pw))
	{
		out.print("반갑습니다.");
		session.setAttribute("member", id);
	}
	else
	{
		response.sendRedirect("login.jsp?fail=0");
	}
}
else
{
	response.sendRedirect("login.jsp?fail=1");
}

%>

<a href="./start.jsp">홈으로</a>
</body>
</html>