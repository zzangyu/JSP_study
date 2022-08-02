<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <%-- 얘가 jsp 페이지임--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>외않되?</title>
</head>
<body>
	<h2>Hello JSP</h2> 
	현재 날짜와 시간은 : <%=new java.util.Date() %> <!-- 얘 안에 자바 코드가 들어가는 것. -->
 별 다 지워.
 <% 
 for(int i = 0; i < 2; i++){
 %>
 	<%= i%>
 <%
 }
 %>
</body>
</html>