<%@page import="kr.co.bit.day3.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>첫화면</title>
</head>
<body>
<h2>메인</h2>
<hr>
<%
MemberVO nic = (MemberVO)session.getAttribute("member");
if(nic != null)
out.print(nic.getId()+"님 반갑습니다.");
%>
<a href="regist_member.jsp">회원가입</a>
</body>
</html>