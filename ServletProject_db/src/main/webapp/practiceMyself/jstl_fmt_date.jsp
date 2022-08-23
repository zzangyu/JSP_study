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
	<h3>날짜 포멧</h3>
	<c:set var="now" value="<%= new java.util.Date() %>" />
	
	<p>date : <fmt:formatDate type="date" value="${now}" /></p>
	<p>time : <fmt:formatDate type="time" value="${now}" /></p>
	<p>both : <fmt:formatDate type="both" value="${now}" /> </p>
	<p>both-short : <fmt:formatDate type="both" timeStyle="short" dateStyle="short" value="${now}"/></p>
	<p>both-medium : <fmt:formatDate type="both" timeStyle="medium"  value="${now}"/></p>
	<p>both-long : <fmt:formatDate type = "both" dateStyle="long" timeStyle="long" value="${now}" /></p>
	<p>pattern format : <fmt:formatDate pattern="yyyy-MM-dd E요일" value="${now}"/></p>

	

</body>
</html>