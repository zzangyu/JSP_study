<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<%
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest();
	%>
	
	request 기본객체와 pageContext.getRequest()의 동일 여부:
	<%= request==httpRequest %>
	
	<br><br>
	pageContext.getOut()메소드를 사용한 데이터 출력:
	<% pageContext.getOut().println("열공하십시오."); %>
	
</body>
</html>