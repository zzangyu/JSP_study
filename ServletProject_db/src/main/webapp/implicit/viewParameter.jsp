<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	page import="java.util.Map" %>
<%@ page import="java.util.Enumeration" %>
<%
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 출력</title>
</head>
<body>
	<b>request.getParameter()사용</b><br>
	이름: <%= request.getParameter("name")%><br>
	주소: <%= request.getParameter("address")%>
	<br><br><br><br>
	
	<b>request.getParameterValues()사용</b><br>
	<%
	String[] values= request.getParameterValues("pet");
	if(values != null) {
		for(int i = 0; i < values.length; i++) {
			
	%>
	<%= values[i]%>&nbsp;
	<%
		}
	}
	%>
	<br><br><br><br>
	
	<b>request.getParameterNames()사용</b><br>
	<%
		Enumeration enumData = request.getParameterNames();
		while(enumData.hasMoreElements()) {
			String name = (String)enumData.nextElement();	
	%>
	<%= name %>
	<%		
		}
	%>
	<br><br><br><br>
	
	<b>request.getParameterMap()메소드 사용</b><br>
	<%
		Map parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name");
		if(nameParam != null) {
			
	%>
	<%= nameParam[0] %>
	<%
		}
	%>
</body>
</html>