<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    				/* 반드시 형변환이 필요함   session set에 있는 키값이 똑같아야됨*/	
    	String memberid = (String)session.getAttribute("MEMBERID");
    	String name = (String)session.getAttribute("NAME");
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 불러 오기</title>
</head>
<body>
세션에 정보를 로드 하였습니다.<br><br>
Member : <%= memberid %><br><br>
Name : <%= name%><br><br>
</body>
</html>