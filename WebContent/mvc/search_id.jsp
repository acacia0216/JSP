<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디중복 확인</title>
<script type="text/javascript">

</script>
</head>
<body>
<%
String id = request.getParameter("id_check");
String admin = "admin";
if(id.equals(admin))
{
	response.sendRedirect("id_check.jsp?id="+id+"&match=f");
}
else{
	response.sendRedirect("id_check.jsp?id="+id+"&match=t");
}
%>
</body>
</html>