package kr.co.bit.day7;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.day5.MemberVO;

public class MyController extends HttpServlet{
	
	private ArrayList<MemberVO> list;
	
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		list = new ArrayList<MemberVO>();
	}
	
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	this.doPost(request, resp);
}


@Override
protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	request.setCharacterEncoding("UTF-8");
	String cmd = request.getParameter("cmd");
	cmd = cmd==null?"":cmd;
	String url = "./day7/mvc/home.jsp";
	if(cmd.equals("viewRegist"))
	{
		url = "./day7/mvc/regist_member.jsp";
	}
	else if(cmd.equals("regist")){
	System.out.println("working");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String zip1 = request.getParameter("zip1");
	String addr1 = request.getParameter("addr1");
	String addr2 = request.getParameter("addr2");
	String email = request.getParameter("email");
	String[] langs = request.getParameterValues("lang");
	/* for (int i = 0; i < langs.length; i++) {
		langs[i] = request.getParameter("lang");
	} */
	String tool = request.getParameter("tool");
	if(tool == null)
		tool = "";
	String project = request.getParameter("project");

	String[]temp = {"","","",""};
	if(langs != null){
	for(String index : langs){
		int idx = Integer.parseInt(index);
		temp[idx] = index;
	}
	}
	
	MemberVO vo = new MemberVO();

	vo.setId(id);
	vo.setPw(pw);
	vo.setName(name);
	vo.setZip1(zip1);
	vo.setAdd1(addr1);
	vo.setAdd2(addr2);
	vo.setEmail(email);
	vo.setLangs(temp);
	vo.setTool(tool);
	vo.setProject(project);

	list.add(vo);
	request.setAttribute("message", "success");
	//response.sendRedirect("storage.jsp");
	url = "../day7/mvc/home.jsp";
	}
	RequestDispatcher rd = request.getRequestDispatcher(url);
	rd.forward(request, resp);
}
}

