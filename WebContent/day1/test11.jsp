<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단 작성</title>
</head>
<body>
<%
	for (int dan = 2; dan <= 9; dan++) {
		/* out.print("<<<<<"+dan+"단>>>>><br/>"); */
		for (int i = 1; i <= 9; i++) {
			out.print(String.format("%d X %d  =  %d &nbsp;&nbsp;&nbsp;",dan,i,dan*i));
			if(dan*i<10)
			{
				out.print("&nbsp;&nbsp;");
			}
		}
		out.print("<br/>");
	}
	%>
	<%
		for (int dan = 2; dan <= 9; dan++) {
			out.print("<<<<<"+dan+"단>>>>><br/>");
			for (int i = 1; i <= 9; i++) {
				out.print(dan + " * " + i + " = " + dan * i+"<br/>");
			}
			out.print("<br/>");
		}
	%>
	
</body>
</html>