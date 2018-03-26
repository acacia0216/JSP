<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<style>
table { /* border-collapse:collapse; */
	border: 1px purple solid;
	color: blue;
}

td {
	border: 1px green solid;
}
</style>
<body>
	<%
		MemberVO vo = (MemberVO) session.getAttribute("MemberVO");
	if (vo == null){
		vo = new MemberVO("","","","","","","","",new String[]{"","","",""},"","");//초기값 넣어주면 null예외 안생김
	}
	%>

	<form action="process_regist.jsp" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id" value="<%=vo.getId()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" value="<%=vo.getPw()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value="<%=vo.getName()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip1" size="3"	value="<%=vo.getZip1()%>">-
				<input type="text" name="zip2" size="3" value="<%=vo.getZip2()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>주소1</td>
				<td><input type="text" name="addr1" size="30" value="<%=vo.getAddr1()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>주소2</td>
				<td><input type="text" name="addr2" size="30" value="<%=vo.getAddr2()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" value="<%=vo.getEmail()%>"></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>사용언어</td>
				<td><input type="checkbox" name="lang" value="0" <%=vo.getLangs()[0].equals("0") ? "checked" : ""%>>자바 
				<input type="checkbox" name="lang" value="1" <%=vo.getLangs()[1].equals("1") ? "checked" : ""%>>파이썬 
				<input type="checkbox" name="lang" value="2" <%=vo.getLangs()[2].equals("2") ? "checked" : ""%>>C++ 
				<input type="checkbox" name="lang" value="3" <%=vo.getLangs()[3].equals("3") ? "checked" : ""%>>C</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>사용툴</td>
				<td><input type="radio" name="tool" value="0" <%=vo.getTool().equals("0") ? "checked" : ""%>>이클립스 
					<input type="radio" name="tool" value="1" <%=vo.getTool().equals("1") ? "checked" : ""%>>Visual Studio 
					<input type="radio" name="tool" value="2" <%=vo.getTool().equals("2") ? "checked" : ""%>>Xcode 
					<input type="radio" name="tool" value="3" <%=vo.getTool().equals("3") ? "checked" : ""%>>notepad</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>프로젝트경험</td>
				<td><select name="project">
						<option value="0">프로젝트경험
						<option value="1" <%=vo.getProject().equals("1") ? "selected" : ""%>>1~2회
						<option value="2" <%=vo.getProject().equals("2") ? "selected" : ""%>>3~4회
						<option value="3" <%=vo.getProject().equals("3") ? "selected" : ""%>>5~6회
						<option value="4" <%=vo.getProject().equals("4") ? "selected" : ""%>>7회이상
						
				</select></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><input type="submit" value="가입"></td>
			</tr>
		</table>
	</form>
</body>
</html>