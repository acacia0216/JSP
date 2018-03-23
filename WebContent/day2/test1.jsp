<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 처리</title>
</head>
<body>
	<%
	/* 계산하는곳 */
	int number1 = Integer.parseInt(request.getParameter("num1"));
	String buho = request.getParameter("op");
	int number2 = Integer.parseInt(request.getParameter("num2"));
	int result = 0;
	
	if(buho == "+")
		result = (number1+number2);
	else if(buho == "-")
		result = (number1-number2);
	else if(buho == "*")
		result = (number1*number2);
	else if(buho == "/")
		result = (number1/number2);
	
	response.sendRedirect("test.jsp?result="+result);
	
	/* 반환하는곳 */
	%>
</body>
</html>