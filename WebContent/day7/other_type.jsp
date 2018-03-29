<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>다른 타입의 JSP</title>
</head>
<body>
<%
//int a = 10/0;
//out.print(a);

%>
<jsp:useBean id="member" class="kr.co.bit.day4.MemberVO" scope="session"></jsp:useBean>
<%
member.setId("admin");
//System.out.println(member.getId());
%>
<%-- <jsp:getProperty property="id" name="member"/><!-- member --> --%>
<jsp:setProperty property="pw" name="member" value="1234"/><!-- member -->
<%
//System.out.println(member.getPw());/* 비밀번호 가져오기 */
//session.setAttribute("member", member);/* 세션 세팅 */
//request.setAttribute("member", member);/* request로 세팅 */
%>
<jsp:forward page="process.jsp">
<jsp:param value="data1" name="etc1"/>
<jsp:param value="data2" name="etc2"/>
<!-- 스크립트릿에서 response.sendRedirect("process.jsp?etc1=data1&etc2=data2");와 같은작업 -->
</jsp:forward><!-- 페이지이동 -->
<jsp:setProperty property="id" name="member" value="useruser"/>
</body>
</html>