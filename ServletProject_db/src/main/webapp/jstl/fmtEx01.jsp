<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8" /> <!-- 한글 깨지는거 방지 -->
<%-- <fmt:setLocale value="en" /> --%> <!-- 얘로 영어 설정하는거임 -->
<fmt:bundle basename="bundle.testBundle">
<fmt:message key="TITLE" var="title" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
</head>
<body>
<fmt:message key="NAME" var="name" />${name}님
	<c:if test="${! empty param.id}">
		<fmt:message key="MESSAGE" >
			<fmt:param value="${param.id}" />
		</fmt:message>
	</c:if>
</body>
</html>
</fmt:bundle>