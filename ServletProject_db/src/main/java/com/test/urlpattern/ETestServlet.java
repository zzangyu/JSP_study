package com.test.urlpattern;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("*.do") // .do라는 확장자명만 두고 앞에는 아무렇게나 써도 된다.
//@WebServlet("/A.do") // 꼭 *이라서 되는건 아님. 이거 쓰지말고 걍 * 쓰자~
//@WebServlet("/*.do") // /*도 됨, 확장자 명도 바꿔도 됨. 아까 *이랑 곂쳐서 안되나봄
public class ETestServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ETestServlet ......");
		
	}

}
