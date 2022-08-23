<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 
prefix="c" ==> ctrl+space했을 때 c 나옴
prefix="co" 로하면 c가 아닌 co로 나옴 
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<c:set var="a" value="10"></c:set>
a : <c:out value="${a}" />
<br>
b : <c:out value="${B}" default="null값 입니다." />
<br>
<c:forTokens var="abc" items="안녕/하세요/usefultoknow블로그/dlqslek" delims="/" >
	<c:out value="${abc}" default="value가 null값일 경우 출력할 값" />
</c:forTokens>
</body>
</html>