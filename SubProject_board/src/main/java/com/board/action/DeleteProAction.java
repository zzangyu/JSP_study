package com.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.BoardDAO;

public class DeleteProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
	    request.setCharacterEncoding("utf-8");
	    String pageNum = request.getParameter("pageNum");
	    BoardDAO dbPro = BoardDAO.getInstance();
	    	
	    int num = Integer.parseInt(request.getParameter("num"));
	    String pass = request.getParameter("pass");

	    int check = dbPro.deleteArticle(num, pass);
	    
	    request.setAttribute("pageNum", pageNum);
		request.setAttribute("check", check);
		
	    return "/board/deleteProc.jsp";
	}

}
