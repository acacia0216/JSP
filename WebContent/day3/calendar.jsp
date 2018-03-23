<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>달력</title>
</head>
<style type="text/css">
.sun {
	color: red;
}
.std {
	color: blue;
}

table {
	width: 800px;
	border-collapse: coLLapse;
	border: 1px solid black;
	text-align: center;
}

td {
	border: 1px solid black;
}
</style>


<body>
	<%
		int year = Integer.parseInt(request.getParameter("year"));
		int month = Integer.parseInt(request.getParameter("month"));
		Calendar cal = Calendar.getInstance();
		cal.set(year, month - 1, 1);
		String[] day = new String[42];

		int lastDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//마지막날 호출
		int space = cal.get(Calendar.DAY_OF_WEEK) - 1;//1일의 요일호출

		/* for(int i=0; i<space-1; i++)//빈칸 넣기
		{
			day[i] = "";
		} */

		int count = space;
		for (int j = 1; j <= lastDay; j++) {//숫자넣기
			day[count] = String.valueOf(j);
			count++;
		}
		for (int i = 0; i < day.length; i++) {
			if (day[i] == null)
				day[i] = "";
		}
	%>

	<table>
		<tr>
			<td colspan="7"><b><%=year%>년 <%=month%>월</b></td>
		</tr>
		<tr>
			<td class="sun"><b>일</b></td>
			<td><b>월</b></td>
			<td><b>화</b></td>
			<td><b>수</b></td>
			<td><b>목</b></td>
			<td><b>금</b></td>
			<td class="std"><b>토</b></td>
		</tr>
		<% for(int i=0; i<day.length; i+=7)	{
			if(i>27 && day[29] =="" || i>30 && day[35]=="")
			{
				break;
			}
		%>
		<tr valign="top" align="left" height="100">
			<td class="sun"><%=day[i]%></td>
			<td><%=day[i+1]%></td>
			<td><%=day[i+2]%></td>
			<td><%=day[i+3]%></td>
			<td><%=day[i+4]%></td>
			<td><%=day[i+5]%></td>
			<td class="std"><%=day[i+6]%></td>
		</tr>
		<%
		} %>
	</table>
</body>
</html>