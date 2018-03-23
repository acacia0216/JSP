
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Word Service</title>
</head>
<body>
	<h1>
		<%
			String words[] = { "오직 남들을 위하여 산 인생만이 가치 있는 것이다.(아인슈타인)", "울지 않는 청년은 야만인이요 웃지 않는 노인은 바보다.(조지 산타아나)",
					"사랑은 고생을 면할 수가 없다.그러나 잊을 수 있는 능력이 있다.(디즈레일리)", "사람을 알려면 그의 지갑,쾌락,그리고 불평을 보라.(탈무드)",
					"최고급 회개란 과거의 죄를 청산하고 똑바로 행동하는 것이다.(윌리암 제임스)" };
		Random r = new Random();
		int index = r.nextInt(words.length);
		out.print(words[index]);
		
			/*int random = (int) (Math.random() * 5) + 1;

			switch (random) {
			case 1:
				out.print(word[0]);
				break;
			case 2:
				out.print(word[1]);
				break;
			case 3:
				out.print(word[2]);
				break;
			case 4:
				out.print(word[3]);
				break;
			case 5:
				out.print(word[4]);
				break;
			}*/
		%>
	</h1>
</body>
</html>