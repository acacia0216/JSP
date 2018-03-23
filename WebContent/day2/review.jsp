<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>구구단을 외자~ 구구단을 외자~</title>
</head>
<body>
	<%
		/* out.print("2X1=2<br>");
		out.print("2X2=4<br>");
		out.print("2X3=6<br>");
		out.print("2X4=8<br>");
		out.print("2X5=10<br>");
		out.print("2X6=12<br>");
		out.print("2X7=14<br>");
		out.print("2X8=16<br>");
		out.print("2X9=18<br>"); */

		/* for(int i=1; i<10; i++)
		{
			out.print("2 X "+i+" = "+2*i+"<br>");
			out.print(String.format("%d X %d = %d<br>",2,i,2*i));
		} */
		int dan = 2;
		while (true) {
			for (int i = 1; i < 10; i++) {
				out.print(dan + "X" + i + "=" + dan * i + "<br>");
			}
			dan++;
			if (dan > 200) {
				break;
			}
		}
	%>
</body>
</html>