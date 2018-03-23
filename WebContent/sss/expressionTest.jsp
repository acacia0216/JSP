<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>표현식 예제 - 배열의 특정 요소의 내용 출력</title>
</head>
<body>
<%String[] str = {"JSP","JAVA","Android","HTML5"}; 
int i = (int)(Math.random()*4);%>
<%=str[i] %>가(이) 재미있다.
</body>
</html>