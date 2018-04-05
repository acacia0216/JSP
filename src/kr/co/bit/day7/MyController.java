package kr.co.bit.day7;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.bit.day5.MemberVO;

public class MyController extends HttpServlet {

	private ArrayList<MemberVO> list;// 필드선언

	public void init() throws ServletException {
		// TODO Auto-generated method stub
		list = new ArrayList<MemberVO>();// 전역변수처럼 사용
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
		cmd = cmd == null ? "" : cmd;
		String url = "./mvc/home.jsp";
		if (cmd.equals("viewRegist")) {
			url = "./mvc/regist_member.jsp";
		} else if (cmd.equals("regist")) {
			System.out.println("working");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String name = request.getParameter("name");
			String zip1 = request.getParameter("zip1");
			String addr1 = request.getParameter("addr1");
			String addr2 = request.getParameter("addr2");
			String email = request.getParameter("email");
			String[] langs = request.getParameterValues("lang");
			/*
			 * for (int i = 0; i < langs.length; i++) { langs[i] =
			 * request.getParameter("lang"); }
			 */
			String tool = request.getParameter("tool");
			if (tool == null)
				tool = "";
			String project = request.getParameter("project");

			String[] temp = { "", "", "", "" };
			if (langs != null) {
				for (String index : langs) {
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
			System.out.println(vo.getId()+"님이 등록되었습니다.");
			request.setAttribute("message", "success");
			// response.sendRedirect("storage.jsp");
			url = "./mvc/home.jsp";
		} else if (cmd.equals("search")) {
			url = "./mvc/regist_member.jsp";
			String id = request.getParameter("id");
			MemberVO member = null;
			for (MemberVO vo : list) {
				if (vo.getId().equals(id)) {
					member = vo;
					break;
				}
			}
			if(member == null)
			{
				url = url+"?id="+id;
			}
			request.setAttribute("member", member);
		} else if (cmd.equals("searchAll")) {
			url = "./mvc/list.jsp";
			request.setAttribute("list", list);
		}
		RequestDispatcher rd = request.getRequestDispatcher(url);
		rd.forward(request, resp);
	}
}
