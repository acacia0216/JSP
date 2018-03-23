<%@page import="kr.co.bit.day3.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 등록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("fullname");
		//out.print(String.format("%s %s %s", id, pw, name));
		MemberVO vo = new MemberVO(id, pw, name);
		session.setAttribute("member", vo);
		response.sendRedirect("intro.jsp");
	%>
</body>
</html>