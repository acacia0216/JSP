<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.bit.day4.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>데이터 저장소</title>
</head>
<body>

	<!--  String path = application.getRealPath("WEB-INF/file/member.txt");
Reader fr = new FileReader(path);
BufferedReader br = new BufferedReader(fr);
Writer fw = new FileWriter(path,true);
BufferedWriter bw = new BufferedWriter(fw);

MemberVO vo = (MemberVO)session.getAttribute("MemberVO");

String mem = vo.getId()+","+vo.getPw()+","+vo.getName()+","+vo.getZip1()+","+vo.getZip2()+","+vo.getAddr1()+","+vo.getAddr2()+","+vo.getEmail()+","+vo.toString()+","+vo.getTool()+","+vo.getProject();
/* String id = vo.getId();
String pw = vo.getPw();
String name = vo.getName();
String zip1 = vo.getZip1();
String zip2 = vo.getZip2();
String addr1 = vo.getAddr1();
String addr2 = vo.getAddr2();
String email = vo.getEmail();
String langs[] = vo.toString();
String tool = vo.getTool();
String project = vo.getProject(); */

bw.write(mem);
bw.flush();
bw.close();

out.print(path);  -->

	<%!ArrayList<MemberVO> list;

	public void jspInit() {
		list = new ArrayList<MemberVO>();
	}%>
	<%
		MemberVO vo = (MemberVO)session.getAttribute("MemberVO");
	
		String id = request.getParameter("id");
		if (id != null) {
			for (MemberVO temp : list) {
				if (temp.getId().equals(id)) {
					System.out.println(temp);
					break;
				}
			}
		} else {
			list.add(vo);
			System.out.println(vo.getName() + "님이 등록되었습니다. \n 등록인원" + list.size());
		}
		response.sendRedirect("read.jsp");
	%>


</body>
</html>