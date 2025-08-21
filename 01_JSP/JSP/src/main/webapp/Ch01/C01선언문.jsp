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
	선언문(서블릿으로 변환되는 자바파일의 속성/기능을 추가)
	멤버함수 멤버 변수 등을 쓸 때 쓰는 거
 -->
 <%!
 	String name = "INNO";
 	public String testFunc(){
 		System.out.println("선언문 함수 테스트!");
 		return "name: " + name;
 	}
 
 %>
 
 <!-- 
 	표현식(서블릿 파일(JAVA파일) 안의 값을 FN으로 전달 할 때 사용) 
 	- 위의 코드가 먼저 백엔드 안으로 전달되고
 	그 후 그게 여기 표현식으로 와서 웹에 표현되는 것
  -->
 
 NAME : <%=name  %> <br>
 testFunc : <%= testFunc() %> <br>
 
<!-- 
	서블릿 파일 위치
	C:\Users\Administrator\Downloads\bigdataui\JSP_Servlet_SpringBoot\01_JSP\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\work\Catalina\localhost\JSP\org\apache\jsp\Ch01
 -->
</body>
</html>