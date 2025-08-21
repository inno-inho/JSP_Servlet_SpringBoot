<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<!-- 
	SCRIPTLET : JSP -> Servlet파일로 변환될 때 Servlet 내의 Serivice함수 안에서 처리되는 로직
	Service 함수 내에서 동작하기 때문에 변수를 선언하는 경우에는 지역변수가 되고 반복문/분기문 처리가 가능
	하지만 함수를 벗어나면 지역변수는 소멸되기 때문에 요청시(ex: 새로고침) 되면 상태값은(지역변수값) 초기화 된다
 -->

<%
	String str1 = "Inno";
	String str2 = "Helen";
	String str3 = str1 + str2;
	int a = 0;
	/* for(int i = 0; i < 10; i++){
		a++;
		System.out.println("i: " + i);
	} */
	a++;
%>
<!-- 
	a는 서비스 함수 내의 지역변수 취급. 
	그러므로 새로고침을 하면 a의 값은 초기화(원래의 지역변수값)으로 돌아가기 때문에 계속해서 1로 나온다
 -->

str1: <%= str1 %> <br>
str2: <%= str2 %> <br>
str3: <%= str3 %> <br>
a	: <%= a %> <br>


</body>
</html>