package com.mvc.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.control.ActionForward;

public class IndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse reponse) throws IOException {
		
		System.out.println("IndexAction의 execute() 메소드 수행됨");
		
		return new ActionForward("index.jsp", false); /* 강제로 하는게 아니라는 뜻 - redirect가 강제적인것이기 떄문 */
	}

}
