<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>연습</title>
</head>
<style type="text/css">
table{
width:400px;
text-align:center;
border-collapse:collapse;
border:1px black solid;}
td{border:1px black solid;
}
.sun{color:red}
.sat{color:blue}
</style>
<body>
<%Calendar cal = Calendar.getInstance();
%>

<table>
<tr>
<td colspan="7"><%= %>년 <%= %>월</td>
</tr>
<tr>
<td class="sun">일</td><td>월</td><td>화</td><td>수</td><td>목</td><td>금</td><td class="sat">토</td>
</tr>
<%
//for(int i=0; i<lastDay; i++)
{
	
%>

<%}
%>
</table>
</body>
</html>