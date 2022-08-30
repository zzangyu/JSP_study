package com.mvc.control;

public class ActionForward {
	
	/* 이동할 url, 이동방식 활용 */
	
	private String url;
	private boolean redirect; /* 이동한다 안한다 */
	
	/* 생성자 오버로딩 */
	public ActionForward() {
		
	}
	public ActionForward(String url) {
		this.url = url;
	}
	public ActionForward(String url, boolean redirect) {
		this.url = url;
		this.redirect = redirect;
	}
	
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
}
