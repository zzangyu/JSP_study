package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
			//name: 서블릿 이름, urlPatterns, initParams: 초기값
@WebServlet(name = "InitParamAnnoServlet", urlPatterns = {"/InitParam"},
			initParams = {@WebInitParam(name="tel", value="010-1234-1234"), @WebInitParam(name="email", value="hong@naver.com")})
public class InitParamAnnoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println(getInitParameter("tel"));
		System.out.println(getInitParameter("email"));

	}

}
