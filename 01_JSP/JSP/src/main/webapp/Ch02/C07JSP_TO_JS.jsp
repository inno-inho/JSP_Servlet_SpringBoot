<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String msg1 = "Hello World1";
	String msg2 = "Hello World2";

	// PageContext, request, session, application
	request.setAttribute("msg3", "Hello World3");
	request.setAttribute("msg4", "Hello World4");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>






	<script>

		const m1 = '<%= msg1 %>'	// 표현식
		const m2 = '<%= msg2 %>'	// 표현식
		const m3 = '${msg3}'		// EL표현식
		
		const m4 = `${m1}`		// JS의 보간법
		console.log(m1);
		console.log(m2);
		console.log(m3);	

	</script>


</body>
</html>