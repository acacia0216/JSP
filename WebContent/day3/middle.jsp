<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>두번째 페이지</title>
</head>
<body>
	<%
	String value = request.getParameter("select");
	String url = "error.jsp";
	String id = (String)session.getAttribute("member");
	switch(value)
	{
	case "0": 
			if(id != null)
			 {url ="../day2/poll.jsp";}
			else
			{url = "./login.jsp";}
		break;
	case "1": url = "./request_calendar.jsp";
		break;
	case "2": url = "./login.jsp";
		break;
	}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, response);
	%>
</body>
</html>