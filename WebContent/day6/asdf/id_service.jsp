<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String cmd = request.getParameter("cmd");
    if(cmd.equals("id")){
    	cmd = "true";
    }else{
    	cmd = "123456";
    }
    out.print(cmd);
    %>