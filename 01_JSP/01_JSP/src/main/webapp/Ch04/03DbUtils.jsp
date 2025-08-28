<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.util.*, java.sql.*, Ch02.*" %>

<%! 
	// 속성(DB연결 관련된 멤버)
	// DB CONN DATA
	private static String id = "root";
	private static String pw = "1234";
	private static String url = "jdbc:mysql://localhost:3306/opendatadb";
	
	//JDBC참조변수
	private static Connection conn = null;			// DBMS 의 특정 DB와 연결되는 객체
	private static PreparedStatement pstmt = null;	// SQL Query 전송용 객체
	private static ResultSet rs = null;			// Select 결과물 담을 객체

	// 싱글톤패턴 처리
	
	// 기능
	public static void conn() throws Exception{
		Class.forName("com.mysql.cj.jdbc.Driver");
		System.out.println("Driver Loading Success...");
		conn = DriverManager.getConnection(url,id,pw);
		System.out.println("DB CONNECTED...");
	}
	
	// conn이랑 pstmt랑 rs를 전부 쓰는 경우도 있기때문에 모든 경우를 생각해 오버로딩 할거야
	public static void disConn(Connection conn) throws Exception{					
		conn.close();
	}
	public static void disConn(Connection conn, PreparedStatement pstmt) throws Exception{					
		pstmt.close();
		conn.close();
	}
	public static void disConn(Connection conn, PreparedStatement pstmt, ResultSet rs) throws Exception{					
		rs.close();
		pstmt.close();
		conn.close();
	}
	
	public static int insertUser(UserDto userDto) throws Exception{
		pstmt = conn.prepareStatement("insert into tbl_user values(?,?,?,?,?,?)");
		pstmt.setString(1, userDto.getUserid());
		pstmt.setString(2, userDto.getPassword());
		pstmt.setString(3, userDto.getUsername());
		pstmt.setString(4, userDto.getZipcode());
		pstmt.setString(5, userDto.getAddr1());
		pstmt.setString(6, userDto.getAddr2());
		
		
		
		int result = pstmt.executeUpdate();
		
		return result;
	}
	
%>

<%

	// 요청항목 선별
	String url = (String)request.getAttribute("url");			// DB에 저장될때는 Object 클래스로 업캐스팅해서 들어가기 때문에 다시 다운캐스팅 해야함
	// Integer serviceNo = (Integer)request.getAttribute("serviceNo");
	if(url.contains("/join")){		// join요청이라면
		conn();		// DBCONN	- connection 객체 생성
		UserDto dto = (UserDto)request.getAttribute("userDto");
		insertUser(dto);	
		int result = insertUser(dto);	// PreparedStatement 객체 생성
		// DBDISCONN
		disConn(conn, pstmt);
		// Redirect(login.jsp or joinForm.html )
		if(result > 0){		// 회원가입이 정상적으로 됬다면
			response.sendRedirect("./login.jsp");	// 로그인 페이지로 갑시다
		}else{
			;
		}
		
	}
	
	UserDto dto = (UserDto)request.getAttribute("userDto");

%>













