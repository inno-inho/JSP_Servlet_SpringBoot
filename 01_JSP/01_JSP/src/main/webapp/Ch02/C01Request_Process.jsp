<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
html에서 입력한거를 받을 코드
 -->
<%

	/* 
		requeset 내장객체: 요청정보값 저장(Http Request Protocol의 구조형태)
	*/

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String bgcolor = request.getParameter("bgcolor");
	System.out.printf("%s %s %s \n", username, password, bgcolor);

%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:<%=bgcolor%>">

	<h1>이노 컴퓨터 Process file</h1>
	
	username : <%= username%></br>
	password : <%= password%></br>
	bgcolor : <%= bgcolor%></br>

</body>
</html>