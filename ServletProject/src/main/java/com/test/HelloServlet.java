package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.net.aso.i;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet(name = "myServlet", urlPatterns = { "/aa", "/bb", "/xxx" }) // 어노테이션을 이용하는 방법 : 맵핑명
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	@Override
	public void init() throws ServletException {
		System.out.println("init 요청");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("HelloServlet 요청");
		
	}

	@Override
	public void destroy() {
		System.out.println("destory 요청");
	}
	
}
