<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%!
	int n = 0;
	public int countUp(){
		n++;
		return n;
	}
%>

N: <%= countUp() %>

<!-- 
	톰캣이 켜져있으면 이 서버는 유효
 -->

<!-- 
	선언문에서는 반복문이나 분기문 쓸 수 없다. 
	왜냐 자바에서도 반복문이나 분기문을 main클래스 안에서 쓸 수 있으니까!
 -->

</body>
</html>