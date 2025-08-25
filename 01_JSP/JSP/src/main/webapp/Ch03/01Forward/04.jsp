<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String username = request.getParameter("username");
	String password = request.getParameter("password");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>04.JSP PAGE</h1>
	USERNAME : ${param.username}<br/>		<!-- 바로 값을 꺼내는 방법 -->
	USERNAME : <%=password %><br/>
	02_VALUE : ${C02}<br/>
	03_VALUE : ${C03}<br/>
	
</body>
</html>