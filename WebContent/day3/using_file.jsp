<%@page import="kr.co.bit.day3.Student"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.Reader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일 이용</title>
</head>
<body>
	<%
		String path = application.getRealPath("WEB-INF\\file\\Abc1115.txt");
		File file = new File(path);
		//out.println(path);//실제 저장장소 출력
		Reader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		ArrayList<Student> al = new ArrayList<Student>();

		while (true) {
			String read = br.readLine();
			if (read == null) {
				break;
			}
			al.add(new Student(read.substring(0, 6), read.substring(6, 10), read.substring(10, 13),
					read.substring(13, 16), read.substring(16, 19), read.substring(19, 22), read.substring(22, 25),
					read.substring(25, 28), read.substring(28, 29), read.substring(29, 30),
					read.substring(30, 31)));
		}
		al.sort()
		
		session.setAttribute("file", al);
		response.sendRedirect("list.jsp");
	
		%>
	
</body>
</html>