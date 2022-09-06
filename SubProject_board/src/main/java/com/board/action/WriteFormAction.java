package com.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// 새 글의 경우 num = 0 이라고 해서 넘겨줄 것이고, 답변글일 경우 원래의 글 번호의 num을 받아와서 넘겨줌
		// num을 통해서 새글인지 답변글인지 알 수 있음

		int num = 0, ref = 1, step = 0, depth = 0;

		try { // 브라우저에 넘길 때 보이면 안돼서 hidden으로 넘겨준다.
			if(request.getParameter("num") != null) {
				num = Integer.parseInt(request.getParameter("num"));
				ref = Integer.parseInt(request.getParameter("ref"));
				step = Integer.parseInt(request.getParameter("step"));
				depth = Integer.parseInt(request.getParameter("depth"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		// 해당 뷰에서 사용할 속성
		request.setAttribute("num", num);
		request.setAttribute("ref", ref);
		request.setAttribute("step", step);
		request.setAttribute("depth", depth);
		
		return "/board/writeForm.jsp";
	}

}
