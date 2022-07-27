package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResponseServlet
 */
@WebServlet("/Response")
public class ResponseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=UTF-8"); // 문서가 가지고 있는 인코딩 방식이 무엇이냐 ?
		PrintWriter out = response.getWriter();
		out.print("<html>");
		out.print("<head><title>Response Test</title></head>");
		out.print("<body>");
		out.print("Hi, ResponseServlet Test !");
		out.print("</body>");
		out.print("</html>");
	}

}
