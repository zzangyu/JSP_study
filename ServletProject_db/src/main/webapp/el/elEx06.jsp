<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!--web.xml에서 태그 라이브러리를  -->
    <%@ taglib prefix="elfunc" uri ="/WEB-INF/tlds/el-functions.tld" %>
    
    <%
   		Date today = new Date();
  		request.setAttribute("today", today);
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	오늘은 <b>${elfunc:dateFormat(today)}</b>입니다.
</body>
</html>