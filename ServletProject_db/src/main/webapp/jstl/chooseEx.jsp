<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	점수을 입력해주세요.
	<form action="chooseEx.jsp" method="post">
		<input type="text" name="score" value="${param['score']}">
		<input type="submit" value="확인">
	</form>
	<c:if test="${!(param.score eq null)}">
	당신의 학점은 
	<c:choose>
			<c:when test="${param.score ge 90}"> A </c:when>
			<c:when test="${param.score ge 80}"> B </c:when>
			<c:when test="${param.score ge 70}"> C </c:when>
			<c:when test="${param.score ge 60}"> D </c:when>
			<c:otherwise> F </c:otherwise>
		</c:choose>
		입니다.
	</c:if>
</body>
</html>