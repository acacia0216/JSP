<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    String realFolder ="";
    
    String saveFolder = "/fileSave";
    String encType = "utf-8";
    int maxSize = 5*1024*1024;
    
    ServletContext context = getServletContext();
    
    realFolder = context.getRealPath(saveFolder);
    out.println("the realpath is : "+realFolder+"<br>");
    
    try{
    MultipartRequest multi = null;
    
    multi = new MultipartRequest(request,realFolder,maxSize,encType,new DefaultFileRenamePolicy());
    
    Enumeration<?> params = multi.getParameterNames();
    
    while(params.hasMoreElements()){
    	String name = (String)params.nextElement();
    	String value = multi.getParameter(name);
    	out.println(name + " = "+value+"<br>");
    }
    
    out.println("------------------------<br>");
    
    Enumeration<?> files = multi.getFileNames();
    %>