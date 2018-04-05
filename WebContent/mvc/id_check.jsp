<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 체크</title>
<script type="text/javascript">
	function work_close() {
		var userid = document.getElementById("id").value;
		opener.document.getElementById("userid").value = userid;
		opener.document.getElementById("isIdCheck").value = true;
		self.close();
	}
</script>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String match_check = request.getParameter("match");
		if (match_check == null) {
			match_check = "";
		} else {
			if (match_check.equals("f")) {
				out.print(id + "는 사용 할 수 없습니다.");
			} else {
				out.print("사용 가능합니다.");
			}
		}
	%>
	<form action="search_id.jsp" method="post">
		<table>
			<tr>
				<td colspan="3" align="center">ID check</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id_check" id="id" value="<%=id%>"></td>
				<td><input type="submit" value="아이디확인"></td>
			</tr>
			<tr>
				<td colspan="3" align="right"><button onclick="work_close()">아이디
						사용</button></td>
			</tr>
		</table>
	</form>
</body>
</html>