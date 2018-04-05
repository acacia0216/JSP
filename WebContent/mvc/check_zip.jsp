<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function work_close() {
		var zipCode = document.getElementById("zip").value;
		opener.document.getElementById("zip").value = zipCode;
		opener.document.getElementById("isZipCheck").value = true;
		self.close();
	}
</script>
</head>
<body>
	<%
		String zipCode = request.getParameter("zipCode");
		String confirm = request.getParameter("confirm");
		if (zipCode == null)
			zipCode = "";
		if (confirm == null) {
			confirm = "";
		} else {
			if (confirm.equals("t")) {
				out.print("가능");
			} else {
				out.print("재입력");
			}
		}
	%>

	<form action="searchzip.jsp" method="get">
		<table>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip" id="zip" value="<%=zipCode%>"></td>
				<td><input type="submit" value="검색"></td>
			</tr>
			<tr>
				<td><button onclick="work_close()">입력</button></td>
			</tr>
		</table>
	</form>
</body>
</html>