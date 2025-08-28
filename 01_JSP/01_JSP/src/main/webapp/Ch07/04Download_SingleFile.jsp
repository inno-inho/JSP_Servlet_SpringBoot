<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*"%>
<% 
	
	String dirPath = pageContext.getServletContext().getRealPath("/") + "Ch07\\files\\";	
	System.out.println("dirpath: " + dirPath);

	try{
		
		// InputStream
		InputStream fin =new FileInputStream(dirPath +"maltese.jpg");
		
		// OutputStream
		out.clear();					// response outStream을 닫고 버퍼 초기화
		out = pageContext.pushBody();	// 현재페이지의 Body에 out 연결
		ServletOutputStream bout = response.getOutputStream();
		
		// Response Header Settin
		response.setHeader("Content-Type", "appllication/octet-stream; charset-utf-8");
		response.setHeader("content-Disposition", "attachment; filename = maltese.jpg");
		byte[] buff = new byte[4096];
		
		while(true){
			int data = fin.read(buff);
			if(data == -1)
				break;
			bout.write(buff, 0, data);
			bout.flush();
		}
		bout.close();
		fin.close();
		
		
	}catch(Exception e){
		
	}
	
%>