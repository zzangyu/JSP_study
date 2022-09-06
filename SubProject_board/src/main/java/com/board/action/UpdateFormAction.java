package com.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.model.BoardDAO;
import com.board.model.BoardVO;

public class UpdateFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		int num = Integer.parseInt(request.getParameter("num"));
		String pageNum = request.getParameter("pageNum");
		
		BoardDAO dbPro = BoardDAO.getInstance();
		BoardVO article = dbPro.updateGetArticle(num);
		
		request.setAttribute("article", article);
		request.setAttribute("pageNum", pageNum);
		return "/board/updateForm.jsp";
	}

}
