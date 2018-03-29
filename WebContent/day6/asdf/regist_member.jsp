<%@page import="kr.co.bit.day5.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#message{
border : none;
color:red;}
table { /* border-collapse:collapse; */
	border: none;
	color: blue;
}

td {
	border: 1px black dotted;
}
</style>
<script>
function id_check_with_ajax(val){
	var cmd = val;
	var server_page = "id_service.jsp?cmd="+cmd;
	var xhr = new XMLHttpRequest();
	return false;
}
</script>
<body>
<%
		MemberVO vo = (MemberVO) session.getAttribute("MemberVO");
		if (vo == null) {
			vo = new MemberVO("", "", "", "", "", "", "", new String[] { "", "", "", "" }, "", "");//초기값 넣어주면 null예외 안생김
		}
	%>
<form action="process_regist.jsp" method="get">
		<table>
			<tr>
				<td>아이디</td>
				<td>
				<input type="text" name="id" id="userid" value="<%=vo.getId()%>" onclick="return id_check_with_ajax(0)">
				<button onclick="return id_check_with_ajax(0)">id check</button>
				<input type="text" name="" id="message" value=""></td>
				<td></td>
				<td><input type="hidden" name="isIdCheck" id="isIdCheck" value="false"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="userpw" id="pw" value="<%=vo.getPw()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return pwEmpty()" name="isPwCheck" id="isPwCheck" value="false"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="username" value="<%=vo.getName()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return nameEmpty()" name="isNameCheck" id="isNameCheck" value="false"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip1" id="userzip" size="5" value="<%=vo.getZip1()%>"><button onclick="return id_check_with_ajax(1)">우편번호 검색</button></td>
				<td></td>
				<td><input type="hidden" name="isZipCheck" id="isZipCheck" value="false"></td>
			</tr>
			<tr>
				<td>주소1</td>
				<td><input type="text" name="addr1" id="useradd1" size="30" value="<%=vo.getAdd1()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add1Empty()" name="isAdd1Check" id="isAdd1Check" value="false"></td>
			</tr>
			<tr>
				<td>주소2</td>
				<td><input type="text" name="addr2" id="useradd2" size="30" value="<%=vo.getAdd2()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add2Empty()" name="isAdd2Check" id="isAdd2Check" value="false"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="useremail" value="<%=vo.getEmail()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return emailEmpty()" name="isEmailCheck" id="isEmailCheck" value="false"></td>
			</tr>
			<tr>
				<td>사용언어</td>
				<td><input type="checkbox" name="lang" value="0" class="Langs" <%=vo.getLangs()[0].equals("0") ? "checked" : ""%>>자바 
					<input type="checkbox" name="lang" value="1" class="Langs" <%=vo.getLangs()[1].equals("1") ? "checked" : ""%>>파이썬
				 	<input type="checkbox" name="lang" value="2" class="Langs" <%=vo.getLangs()[2].equals("2") ? "checked" : ""%>>C++
					<input type="checkbox" name="lang" value="3" class="Langs" <%=vo.getLangs()[3].equals("3") ? "checked" : ""%>>C</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>사용툴</td>
				<td>
				<input type="radio" name="tool" class="tools" value="0" <%=vo.getTool().equals("0") ? "checked" : ""%>>이클립스 
				<input type="radio" name="tool" class="tools" value="1" <%=vo.getTool().equals("1") ? "checked" : ""%>>Visual Studio 
				<input type="radio" name="tool" class="tools" value="2" <%=vo.getTool().equals("2") ? "checked" : ""%>>Xcode 
				<input type="radio" name="tool" class="tools" value="3" <%=vo.getTool().equals("3") ? "checked" : ""%>>notepad</td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>프로젝트경험</td>
				<td><select name="project" id="project">
						<option value="0">프로젝트경험
						<option value="1" class="projects" <%=vo.getProject().equals("1") ? "selected" : ""%>>1~2회
						<option value="2" class="projects" <%=vo.getProject().equals("2") ? "selected" : ""%>>3~4회
						<option value="3" class="projects" <%=vo.getProject().equals("3") ? "selected" : ""%>>5~6회
						<option value="4" class="projects" <%=vo.getProject().equals("4") ? "selected" : ""%>>7회이상
				</select></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td colspan="4" align="right"><button onclick="return f_check()">가입</button></td>
				
			</tr>
		</table>
	</form>
</body>
</html>