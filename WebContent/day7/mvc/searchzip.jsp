<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호 검색</title>
</head>
<body>
<% String zip = request.getParameter("zip");
if(zip == null || zip == "")
	response.sendRedirect("check_zip.jsp?zipCode="+zip+"&confirm=f");
else{
response.sendRedirect("check_zip.jsp?zipCode="+zip+"&confirm=t");
}
%>
</body>
</html>