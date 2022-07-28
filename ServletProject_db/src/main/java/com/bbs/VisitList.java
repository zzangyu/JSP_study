package com.bbs;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VisitList
 */
@WebServlet("/VisitList")
public class VisitList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request,response);
	}
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		try {

			out.println("<html>");
			out.println("<head><title>방명록 리스트</title></head>");
			out.println("<body>");
			
			StringBuffer sql = new StringBuffer();
			sql.append("select no, writer, memo, regdate ");
			sql.append("from visit ");
			sql.append("order by no desc");
			
			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "scott", "tiger");
				
				pstmt = con.prepareStatement(sql.toString());
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					int no = rs.getInt("no");
					String writer = rs.getString("writer");
					String memo = rs.getString("memo");
					java.sql.Date regdate = rs.getDate("regdate");
					
					// 테이블 시작
					out.println("<table align=center width=500 border=1>");
					// 첫번째 tr 시작 -- 번호, 작성자, 날짜
					out.println("<tr>");
					out.println("<th width=50>번호</th>");
					out.println("<td width=50 align=center>"+no+"</td>");
					
					out.println("<th width=70>작성자</th>");
					out.println("<td width=70 align=center>"+writer+"</td>");
					
					out.println("<th width=50>날짜</th>");
					out.println("<td width=100 align=center>"+regdate+"</td>");
					out.println("</tr>");
					
					// 두번째 tr시작 -- 내용
					out.println("<tr>");
					out.println("<th width=50>내용</th>");
					out.println("<td colspan=5>&nbsp;");
					
					out.println("<textarea rows=3 cols=50>"+memo+"</textarea>");
					
					
					
					out.println("</td>");
					out.println("</tr>");
					
					out.println("</table>");
					out.println("<p>");
				}
				
		     
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException cnfe) {
			cnfe.printStackTrace();
		} finally {
			try {if(rs != null) rs.close();} catch (SQLException e) { }
			try {if(con != null) con.close();} catch (SQLException e) { }
			try {if(pstmt != null) pstmt.close();} catch (SQLException e) { }
		}
			out.println("<p align=center><a href=/ServletProject_db/bbs/writer.html>글쓰기</a></p>");
			out.println("</body>");
			out.println("</html>");
		} finally {
			out.close();
		}
		
	}
	
}
