<%@page import="kr.co.bit.day4.StudentVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day4.FileDataService"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일첨가</title>
</head>
<body>
<%
//Date date = new Date();

FileDataService fds = new FileDataService();
//Date date = fds.getDateTime();

//session.setAttribute("date", date);
//response.sendRedirect("result.jsp");

String path = application.getRealPath("WEB-INF/file/Abc1115.txt");

ArrayList<StudentVO> list = (ArrayList<StudentVO>)fds.getFileData(path);

session.setAttribute("list", list);
response.sendRedirect("result.jsp");
%>

<% %>
</body>
</html>