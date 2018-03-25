<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.bit.day3.Student"%>
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
		List<Student> al = (ArrayList) session.getAttribute("file");
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
			<td>성취도</td>
			<td>지역코드</td>
		</tr>
		<%
			for (int i = 0; i < 100; i++) {
		%>
		<tr>
			<td><%=al.get(i).getScn()%></td>
			<td><%=al.get(i).getMail()%></td>
			<td><%=al.get(i).getKor()%></td>
			<td><%=al.get(i).getEng()%></td>
			<td><%=al.get(i).getMet()%></td>
			<td><%=al.get(i).getSic()%></td>
			<td><%=al.get(i).getSos()%></td>
			<td><%=al.get(i).getTotal()%></td>
			<td><%=al.get(i).getTic()%></td>
			<td><%=al.get(i).getAcm()%></td>
			<td><%=al.get(i).getCode()%></td>
		</tr>

		<%
			}
		%>
	</table>
	
</body>
</html>