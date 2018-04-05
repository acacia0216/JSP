<%@page import="kr.co.bit.day5.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<style type="text/css">
#message {
	border: none;
	color: red;
	background-color: white;
}
#zipmsg {
	color: red;
}
</style>
<script type="text/javascript">

	function idCheck_with_ajax(val) {
		// alert("사용 가능한 아이디 입니다.");
		var cmd;
		if (val == 0) {
			cmd = "id";
		} else {
			cmd = "zipcode";
		}
		alert(cmd);
		/* 		var server_page = "id_service.jsp?cmd="+cmd;
		 */
		var server_page = "./mvc/id_service.jsp";
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var result = this.responseText; // .responseText는 server_page에서 print 된 값을 모조리 받는 메소드이다. 
				alert(result);
				if (val == "0") {
					processResultId(result);
				} else {
					processResultZip(result);
				}
			} else if (this.readyState == 4 && this.status != 200)
				alert("error");
		}
		/* 		xhr.open("GET",server_page,true); // server.jsp에 get방식으로 보낸다. true는 비동기식을 의미. 
				xhr.send();
		 */
		var data = "cmd=" + cmd;
		xhr.open("POST", server_page, true); // server.jsp에 get방식으로 보낸다. true는 비동기식을 의미.
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded") // post 방식으로 보내주기 위해선 설정해줘야하는 기본 헤더값 (form action 할때는 디폴트로 이미 설정 되어있지만 xhr는 직접적어줘야한다.) 
		xhr.send(data);
		return false;
	}
	function processResultId(result) {
		if (result == "true") {
			//id값 사용가능
			//히든부분 처리
			document.getElementById("isIdCheck").value = true;
			document.getElementById("message").value = "아이디 사용 가능";
		} else {
			//id 사용불가를 표시해야함
			document.getElementById("message").value = "아이디 사용 불가능";
		}
		return false;
	}
	function processResultZip(result) {
		if (result == "123456") {
			//zipcode 나누기
			var pos = document.getElementById("zipmsg");
			pos.innerHTML = result;
			//document.getElementById("zipmsg").innerHTML = result;
			//var zip1 = result.substring(0, 3);
			//var zip2 = result.substring(3);
			document.getElementById("zip").value = result; // end의 앞까지 짤린다.
			//document.getElementById("zip2").value = zip2; // 3부터 마지막까지 다 자르고 싶을 땐 이렇게쓰면 된다.  
			document.getElementById("isZipCheck").value = true; // 3부터 마지막까지 다 자르고 싶을 땐 이렇게쓰면 된다.  
		} else {
			alert("error");
		}
			return false;
	}
	function check_empty() {
		var val = document.getElementById("pw").value;
		if (val == "") {
			alert("비밀번호를 입력하세요");
		}
		return false;
	}
	function checkbox_check() {
		var eles = document.getElementsByClassName("langs"); // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		var count = 0;
		for (var i = 0; i < eles.length; i++) {
			if (eles[i].checked) {
				alert((i + 1) + " checked");
				count++;
			}
		}
		alert(count + "개를 선택하셨습니다.")
		return false;
	}
	function zip_check() {
		var zip = document.getElementById("zip").value; // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		//var zip2 = document.getElementById("zip2").value;
		window.open("check_zip.jsp?zipCode=" + zip, "", "width=300px height=200px");
		return false;
	}
	function select_check() {
		var pro = document.getElementById("zero").value; // 이번엔 value값 필요없고 태그만 가져온다 태그는 배열 혀태로 가져온다.
		if (pro == "0") {
			alert("프로젝트 경험을 선택하십시오.");
		}
		return false;
	}
	function final_check() {
		var val1 = document.getElementById("isIdCheck").value;
		var val2 = document.getElementById("isZipCheck").value;
		alert("아이디체크" + val1);
		alert("우편번호체크" + val2);
		return true;
	}
</script>
<body>
	<%
		MemberVO vo = (MemberVO) request.getAttribute("member");
		String message = "";
		String temp = request.getParameter("id");
		if(temp != null)
		{
			message = temp+"회원이 존재하지 않습니다.";
		}
		if (vo == null) {
			vo = new MemberVO("", "", "", "", "", "", "", new String[] { "0", "", "", "" }, "0", "0");//초기값 넣어주면 null예외 안생김
		}
	%>

	<form action="./controller?cmd=regist" method="post" enctype="application/x-www-form-urlencoded">
		<table>
			<tr>
				<td>아이디</td>
				<td>
				<input type="text" name="id" id="userid" value="<%=vo.getId()%>">
				<button onclick="return idCheck_with_ajax(0)">id check</button>
				<input type="text" name="" id="message" value="" disabled="disabled"></td>
				<td></td>
				<td><input type="hidden" name="isIdCheck" id="isIdCheck" value="false"></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><input type="password" name="pw" id="pw" value="<%=vo.getPw()%>"></td>
				<td><span id="nomember"><%=message %></span></td>
				<td><input type="hidden" name="isPwCheck" id="isPwCheck" value="false"></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" id="name" value="<%=vo.getName()%>"></td>
				<td></td>
				<td><input type="hidden" name="isNameCheck" id="isNameCheck" value="false"></td>
			</tr>
			<tr>
				<td>우편번호</td>
				<td><input type="text" name="zip1" id="zip" size="5" value="<%=vo.getZip1()%>">
				<button onclick="return idCheck_with_ajax(1)">우편번호 검색</button>
				<span id="zipmsg"></span>
				</td>
				<td></td>
				
				<td><input type="hidden" name="isZipCheck" id="isZipCheck" value="false"></td>
			</tr>
			<tr>
				<td>주소1</td>
				<td><input type="text" name="addr1" id="add1" size="30" value="<%=vo.getAdd1()%>"></td>
				<td></td>
				<td><input type="hidden" name="isAdd1Check" id="isAdd1Check" value="false"></td>
			</tr>
			<tr>
				<td>주소2</td>
				<td><input type="text" name="addr2" id="add2" size="30" value="<%=vo.getAdd2()%>"></td>
				<td></td>
				<td><input type="hidden" name="isAdd2Check" id="isAdd2Check" value="false"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" id="email" value="<%=vo.getEmail()%>"></td>
				<td></td>
				<td><input type="hidden" name="isEmailCheck" id="isEmailCheck" value="false"></td>
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
				<td colspan="4" align="right"><button onclick="return final_check()">가입</button></td>
				
			</tr>
		</table>
	</form>
</body>
</html>