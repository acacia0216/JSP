<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기사 데이터 리스트</title>
</head>
<style type="text/css">
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
		
	%>
	<table>
		<tr>
			<td>학번</td>
			<td>이메일</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>과학</td>
			<td>국사</td>
			<td>총점</td>
			<td>담임</td>
			<td>성취</td>
			<td>지역</td>
		</tr>
		<%
			for (int i = 0; i > 100; i++) {
		%>
		<tr>
			<td>al.get(i).getscn</td>
			<td>al.get(i).getmail</td>
			<td>al.get(i).getkor</td>
			<td>al.get(i).geteng</td>
			<td>al.get(i).getmet</td>
			<td>al.get(i).getsic</td>
			<td>al.get(i).getsos</td>
			<td>al.get(i).gettotal</td>
			<td>al.get(i).gettic</td>
			<td>al.get(i).getacm</td>
			<td>al.get(i).getcode</td>
		</tr>
	</table>
	<%
		}
	%>

</body>
</html>