<%@page import="kr.co.bit.day5.MemberVO"%>
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
	border: 1px red dotted;
	color: blue;
}

td {
	border: 1px black dotted;
}
</style>
<script type="text/javascript">
	function id_check() {
		var checkid = document.getElementById("userid").value;
		window.open("id_check.jsp?id=" + checkid, "", "width=500px height=200px");
		return false;
	}

	function pwEmpty() {
		
		var pwEmpty = document.getElementById("pw");//입력값 가져오고
		if (pwEmpty == null) {//null이면
		document.getElementById("pwCheck").value = false;
			return false;
		}else{//null이 아니면
			document.getElementById("pwCheck").value = true;
			return false;
		}
	}
	function nameEmpty(){
		var nameEmpty = document.getElementById("name");//입력값 가져오고
		
		if (name == null) {//null이면
			document.getElementById("nameCheck").value = false;
			return false;
		}else{//아니면
			document.getElementById("nameCheck").value = true;
			return false;
		}
		
	}
	function checkzip() {
		var zipCode = document.getElementById("zip").value;
		window.open("check_zip.jsp?zipCode=" + zipCode, "", "width=500px height=200px");
		return false;
	}
	
	function add1Empty(){
		
		var add1Empty = document.getElementById("add1");//입력값 가져오고
		
		if (add1 == null) {//null이면
			document.getElementById("add1Check").value = false;
			return false;
		}else{//아니면
			document.getElementById("add1Check").value = true;
			return false;
		}
		
	}
	function add2Empty(){
		var add2Empty = document.getElementById("add2");//입력값 가져오고
		
		if (add2 == null) {//null이면
			document.getElementById("add2Check").value = false;
			return false;
		}else{//아니면
			document.getElementById("add2Check").value = true;
			return false;
		}
	}
	function emailEmpty(){
		var emailEmpty = document.getElementById("email");//입력값 가져오고
		
		if (email == null) {//null이면
			document.getElementById("emailCheck").value = false;
			return false;
		} else {//아니면
			document.getElementById("emailCheck").value = true;
			return false;
		}
	}

	function final_check() { //최종체크
		var checkNext;
		checkNext = document.getElementById("pwCheck");
		if (checkNext == false) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		checkNext = document.getElementById("nameCheck");
		if (checkNext == false) {
			alert("이름을 입력하세요");
			return false;
		}
		checkNext = document.getElementById("add1");
		if (checkNext == false) {
			alert("주소를 입력하세요");
			return false;
		}
		checkNext = document.getElementById("add2");
		if (checkNext == false) {
			alert("상세주소를 입력하세요");
			return false;
		}
		checkNext = document.getElementById("email");
		if (checkNext == false) {
			alert("이메일주소를 입력하세요");
			return false;
		}
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
				<td><input type="text" name="id" id="userid" value="<%=vo.getId()%>" onclick="return id_check()"></td>
				<td><button onclick="return id_check()">id check</button></td>
				<td><input type="hidden" name="isIdCheck" id="isIdCheck" value="false"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" id="pw" value="<%=vo.getPw()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return pwEmpty()" name="isPwCheck" id="pwCheck" value="false"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" value="<%=vo.getName()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return nameEmpty()" name="isNameCheck" id="nameCheck" value="false"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip1" id="zip" size="5" value="<%=vo.getZip1()%>"></td>
				<td><button onclick="return checkzip()">우편번호 검색</button></td>
				<td></td>
			</tr>
			<tr>
				<td>주소1</td>
				<td><input type="text" name="addr1" id="add1" size="30" value="<%=vo.getAdd1()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add1Empty()" name="isAdd1Check" id="Add1Check" value="false"></td>
			</tr>
			<tr>
				<td>주소2</td>
				<td><input type="text" name="addr2" id="add2" size="30" value="<%=vo.getAdd2()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add2Empty()" name="isAdd2Check" id="add2Check" value="false"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email" value="<%=vo.getEmail()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return emailEmpty()" name="isEmailCheck" id="emailCheck" value="false"></td>
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
				<td colspan="4" align="right"><input type="submit" value="가입" onclick="return final_check()"></td>
				
			</tr>
		</table>
	</form>
</body>
</html>