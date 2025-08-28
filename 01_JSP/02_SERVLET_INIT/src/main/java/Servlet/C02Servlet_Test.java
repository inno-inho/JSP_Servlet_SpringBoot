package Servlet;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


public class C02Servlet_Test extends HttpServlet{

	
	@Override
	public void init() throws ServletException {
		// 서블릿 최초 실행함수
		System.out.println("C02Servlet_Test INIT() invoke...");
	}
	
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		// 요청시마다 동작하는 함수
		System.out.println("C02Servlet_Test srvice() invoke");
	}

	@Override
	public void destroy() {
		// 내용 변경시 동작하는 함수
		System.out.println("C02Servlet_Test destroy() invoke");
	}



	
	
}
