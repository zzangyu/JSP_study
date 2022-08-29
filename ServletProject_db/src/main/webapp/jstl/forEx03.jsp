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
	<c:set var="aa" value="4" />
	<c:forEach begin="${aa}" end="10" step="1" varStatus="num"> <!-- 공백이 허용되지 않음 무조건 1씩 증가, -->
															<!-- varStatus 루프 돌아가는 값 저장 -->
		${aa=aa+1}&nbsp;&nbsp;
	</c:forEach>
</body>
</html>