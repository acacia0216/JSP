<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String zip1 = request.getParameter("zip1");
		String zip2 = request.getParameter("zip2");
		String addr1 = request.getParameter("addr1");
		String addr2 = request.getParameter("addr2");
		String email = request.getParameter("email");
		String[] langs = request.getParameterValues("lang");
		/* for (int i = 0; i < langs.length; i++) {
			langs[i] = request.getParameter("lang");
		} */
		String tool = request.getParameter("tool");
		if(tool == null)
			tool = "";
		String project = request.getParameter("project");

		String[]temp = {"","","",""};
		if(langs != null){
		for(String index : langs){
			int idx = Integer.parseInt(index);
			temp[idx] = index;
		}
		}
		MemberVO vo = new MemberVO();

		vo.setId(id);
		vo.setPw(pw);
		vo.setName(name);
		vo.setZip1(zip1);
		vo.setZip2(zip2);
		vo.setAddr1(addr1);
		vo.setAddr2(addr2);
		vo.setEmail(email);
		vo.setLangs(temp);
		vo.setTool(tool);
		vo.setProject(project);

		session.setAttribute("MemberVO", vo);
		response.sendRedirect("storage.jsp");
	%>


	<%-- <%="<<<정보를 확인해 주세요>>>"+"<br>" 
+"아이디 : "+id+"<br>"
+"비밀번호 : "+pw+"<br>"
+"이름 : "+name+"<br>"
+"우편번호 : "+zip1+"-"+zip2+"<br>"
+"주소 : "+addr1+" "+addr2+"<br>"
+"이메일 : "+email+"<br>"
+"사용언어 : "+lang+"<br>"
+"사용 툴 : "+tool+"<br>"
+"프로젝트 경험 횟수 : "+project
%> --%>

</body>
</html>