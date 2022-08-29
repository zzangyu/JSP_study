<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자형식, 날짜형식</title>
</head>
<body>
	number 12345.678 : <fmt:formatNumber value="12345.678" type="number" /> <br><br>
	currency 12345 : <fmt:formatNumber value="12345" type="currency" currencySymbol="￦" /> <br><br> 
	percent 0.678 : <fmt:formatNumber value="0.678" type="percent" /> <br><br>
	pattern 12345.678 = ".0" : <fmt:formatNumber value="12345.678" type="number" pattern=".0"/> <br><br>
	
	<c:set var="now" value="<%= new java.util.Date() %>" />
	<c:out value="${now}" /> <br><br>
	date : <fmt:formatDate value="${now }" type="date"/> <br>
	date : <fmt:formatDate value="${now }" type="date" pattern="yyyy년MM월dd일"/> <br>
	time : <fmt:formatDate value="${now }" type="time"/> <br>
	both : <fmt:formatDate value="${now }" type="both"/> <br>
</body>
</html>