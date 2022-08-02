package com.test.urlpattern;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 디렉토리 패턴
//@WebServlet("/BTest") // 뒤에 . 없는게 디렉토리 패턴
//@WebServlet("/test/BTest") // 이런식으로도 됨
//@WebServlet("/*") // * --> 전체를 의미 얘를 적은다음에 주소를 바꾸면 아무렇게나 바꿔도 ok임

public class AServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("AServlet...............");
	}

}
