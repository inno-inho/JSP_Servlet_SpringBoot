package Filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

//@WebFilter("/index.do")
public class HomeFilter_1 implements Filter {

	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)	// chain은 연결용
			throws IOException, ServletException {
	
		// Request Servlet으로 전달되기 전 코드
		
		System.out.println("[FILTER] HOME FILTER_1 START");
		chain.doFilter(req, resp);
		
		// Response가 Client로 전달되기 전 코드
	
		System.out.println("[FILTER] HOME FILTER_1 END");
	}

}
