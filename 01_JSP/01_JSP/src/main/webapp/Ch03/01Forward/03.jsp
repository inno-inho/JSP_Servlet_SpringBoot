<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    	String username = request.getParameter("username");
		String password = request.getParameter("password");
    
		request.setAttribute("C03", "C03_value");
		// forwarding
		request.getRequestDispatcher("./04.jsp").forward(request, response);
		
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>03.JSP PAGE</h1>
	USERNAME : <%=username %><br/>
	USERNAME : <%=password %><br/>
	02_VALUE : ${C02}<br/>

</body>
</html>