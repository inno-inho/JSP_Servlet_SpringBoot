<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%

	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	request.setAttribute("C02", "C02_value");
	// Redirect	forward랑 다른거는 백엔드 내에서 이동하는게 아니라 client 브라우저로 갔다가 다시 요청하는 방식
	// 첫 번째 요청 때 저장되었던 파라미터(입력값은) redirect과정에서 클라이언트브라우저에서 백엔드로 가는 사이에 리셋당해서 없어진다
	// 파라미터 전달방법: queryString으로 전송
	// 스코프를 이용(Session / Application)
	response.sendRedirect("./03.jsp?username= " + username + "&password=" + password);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>02.JSP PAGE</h1>
	USERNAME: <%=username %><br/>
	PASSWORD: <%=password %><br/>
</body>
</html>