<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>출력</title>
</head>
<style type="text/css">
table {
	border-collapse: collapse;
	width: 200px;
	color: black; /* 글씨가 빨간색 */
	text-align: left;
}

td {
	border: 1px black wave;
}
</style>
<body>
	<%
		String scn = request.getParameter("schoolNum");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String sub = request.getParameter("subject");
	%>
	<h2>학생정보</h2>
	<table>
		<tr>
			<td>학번</td>
			<td><%=scn%></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><%=name%></td>
		</tr>
		<tr>
			<td>학년</td>
			<td><%=grade%></td>
		</tr>
		<tr>
			<td>선택과목</td>
			<td><%=sub%></td>
		</tr>
	</table>
	<%=
	request.getProtocol()+"<br>"+
	request.getServerName()+"<br>"+
	request.getServerPort()+"<br>"+
	request.getRequestURI()
	%>
</body>
</html>