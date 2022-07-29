package com.test;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

@WebServlet("/login/Sport")
public class SportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String[] sports = request.getParameterValues("sports");
		String gender = request.getParameter("gender");
		
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<body>");
		out.print("취미: ");
		for (String sport : sports) {
			out.print(sport+"&nbsp");
		}
		out.println("<br>성별: "+gender+"<br>");
		out.println("</html>");
		out.println("</body>");
		
		
		
	}

}
