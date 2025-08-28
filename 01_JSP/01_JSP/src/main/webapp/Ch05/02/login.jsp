<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	// 01 파라미터 확인
	
	String username = request.getParameter("username");		// login_form에 있는 name = username<input>창 에 입력되는 거
	String password = request.getParameter("password");		// login_form에 있는 name = password<input>창 에 입력되는 거
	
	// 02 유효성 검사
	
	if(username.isEmpty()){			// username이 비어있다면, 입력을 안했다면
		request.setAttribute("username_msg", "username을 입력하세요");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return;		// 분기처리해야하는 상황에서 포워딩까지 해야한다면 return;은 넣는 편이 낫다
	}
	if(password.isEmpty()){			// password가 비어있다면, 입력을 안했다면
				// 분기처리해야하는 상황에서 포워딩까지 해야한다면 return;은 넣는 편이 낫다
	}
	
	// 03 관련 서비스 실행
	
	// 03-01) username과 동일한 계정이 있는지 확인 가져와야함
	if(!username.equals("admin")){			// 입력한 username이 다르다면 저장되어있는 값(admin)과 다르다면
		request.setAttribute("username_msg", "해당 계정은 존재하지 않습니다");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return;
	}
	
	// 03-02) password의 값이 입력한 값이랑 동일한지 확인
	if(!password.equals("1234")){
		request.setAttribute("password_msg", "password가 틀렸습니다");
		request.getRequestDispatcher("./login_form.jsp").forward(request, response);
		return;
	}
	
	// 03-03) session에 해당 계정에 작업에 필요한 속성 저장
	session.setAttribute("isAuth", true);
	session.setAttribute("role", "ROLE_ADMIN");		// !!!!
	session.setMaxInactiveInterval(30);		// 30초만 세션유지
	
	// 04 뷰로 이동
	response.sendRedirect("./main.jsp");
	
	
	
	
	
	
	
%>