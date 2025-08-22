<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- 
html에서 입력한거를 받을 코드
 -->

	<%
	/* 문자셋 설정 */
	
	request.setCharacterEncoding("UTF-8");		// 받을 때 문자를 어떤 방식으로 받을거니?	한글도 되는거요
	response.setContentType("text/html; charset = UTF-8");		// 응답할 때는 어느 타입으로 할 거니?		
	// 공시처럼 외워놓으면 좋다

	%>
 
 <jsp:useBean id="dto" class="Ch02.TestDto" scope="request" />	<!-- == ProfileDto dto = new ProfileDto(); -->
 <jsp:setProperty name="dto" property="stringtoDate" param="date" />
 <jsp:setProperty name="dto" property="*" />
 <!-- 액션태그의 setProperty는 받는 값들의 자료형이 원시형이어야한다 -->
 
 <%
 	System.out.println("dto: " + dto);
 %>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>이노 컴퓨터 Process file</h1>
	TestDto : <%=dto %><br/>
	
</body>
</html>