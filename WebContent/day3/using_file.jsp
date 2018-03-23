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
		Student s = new Student();
		String read = "";
		List<Student> al = new ArrayList<Student>();
		
		while(read != null)
		{
		read = br.readLine();
		StringTokenizer st = new StringTokenizer(read," ");
		int count=st.countTokens();
		
		for(int i=0; i<count; i++)
		{
			al.add(new Student());
		}
		}
		for(int i=0; i<al.size(); i++)
		{
			out.print(al.get(i));
		}
	%>
</body>
</html>