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
	자동차 이름(el) :
	<c:forTokens var="car" items="Sprinter Trueno AE86,RX-7 SavannaFC3S,Lancer Evolution III, RX-7 Efini FD3s" delims=",">
		${car}
	</c:forTokens>
	<br>
	자동차 이름(c:out) :
	<c:forTokens var="car" items="Sprinter Trueno AE86,RX-7 SavannaFC3S,Lancer Evolution III, RX-7 Efini FD3s" delims=",">
		<c:out value="${car}" />
		
	</c:forTokens>
</body>
</html>