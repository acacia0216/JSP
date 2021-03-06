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
		
		if (document.getElementById("pw").value == "") {
		document.getElementById("isPwCheck").value = false;
		}else{
			document.getElementById("isPwCheck").value = true;
		}
			return false;
	}
	function nameEmpty(){
		
		if (document.getElementById("name").value == "") {
			document.getElementById("isNameCheck").value = false;
		}else{
			document.getElementById("isNameCheck").value = true;
		}
			return false;
		
	}
	function checkzip() {
		var zipCode = document.getElementById("zip").value;
		window.open("check_zip.jsp?zipCode=" + zipCode, "", "width=500px height=200px");
		return false;
	}
	
	function add1Empty(){
		
		
		if (document.getElementById("add1").value == "") {
			document.getElementById("isAdd1Check").value = false;
		}else{
			document.getElementById("isAdd1Check").value = true;
		}
			return false;
		
	}
	function add2Empty(){
		
		if (document.getElementById("add2").value == "") {
			document.getElementById("isAdd2Check").value = false;
		}else{
			document.getElementById("isAdd2Check").value = true;
		}
			return false;
	}
	function emailEmpty(){
		
		if (document.getElementById("email").value == "") {
			document.getElementById("isEmailCheck").value = false;
		} else {
			document.getElementById("isEmailCheck").value = true;
		}
			return false;
	}

	function f_check() { 

		if(document.getElementById("isIdCheck").value == false)
			{
			alert("아이디를 중복체크 하세요");
			return false;
			}
		
		else if (document.getElementById("isPwCheck").value == false) {
			alert("비밀번호를 입력하세요");
			return false;
		}
		
		else if (document.getElementById("isNameCheck").value == false) {
			alert("이름을 입력하세요");
			return false;
		}
		
		else if(document.getElementById("isZipCheck").value == false)
			{
			alert("우편번호를 확인하세요")
			return false;
			}
		
		else if (document.getElementById("isAdd1Check").value == false) {
			alert("주소를 입력하세요");
			return false;
		}
		
		else if (document.getElementById("isAdd2Check").value == false) {
			alert("상세주소를 입력하세요");
			return false;
		}
		
		else if (document.getElementById("isEmailCheck").value == false) {
			alert("이메일주소를 입력하세요");
			return false;
		}
		else{
			alert(document.getElementById("isPwCheck").value);
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
				<td><input type="hidden" onblur="return pwEmpty()" name="isPwCheck" id="isPwCheck" value="false"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" value="<%=vo.getName()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return nameEmpty()" name="isNameCheck" id="isNameCheck" value="false"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip1" id="zip" size="5" value="<%=vo.getZip1()%>"></td>
				<td><button onclick="return checkzip()">우편번호 검색</button></td>
				<td><input type="hidden" name="isZipCheck" id="isZipCheck" value="false"></td>
			</tr>
			<tr>
				<td>주소1</td>
				<td><input type="text" name="addr1" id="add1" size="30" value="<%=vo.getAdd1()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add1Empty()" name="isAdd1Check" id="isAdd1Check" value="false"></td>
			</tr>
			<tr>
				<td>주소2</td>
				<td><input type="text" name="addr2" id="add2" size="30" value="<%=vo.getAdd2()%>"></td>
				<td></td>
				<td><input type="hidden" onblur="return add2Empty()" name="isAdd2Check" id="isAdd2Check" value="false"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email" value="<%=vo.getEmail()%>"></td>
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