<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
//쿠키 배열로 가져온다 
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null) {
		
		for(int i=0; i < cookies.length; i++) {
			if(cookies[i].getName().equals("memId")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
		
	}
%>    
    

  <script type ="text/javascript">
  alert("로그아웃했넹?");
  location.href="sessionMemberLogin.jsp";
  </script>