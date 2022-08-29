<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<c:set var="now" value="<%= new java.util.Date() %>" />
	Korea KST : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/><br><br>
	UK GMT : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" timeZone="UK" /><br><br>
	Japan : <fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full" timeZone="Japan" /><br><br>
	<%
		// 사용 가능한 timeZone 목록
		String[] ids = java.util.TimeZone.getAvailableIDs();
		request.setAttribute("ids", ids);
	%>
	<c:forEach var="id" items="${ids}">
		${id}<br>
	</c:forEach>
</body>
</html>