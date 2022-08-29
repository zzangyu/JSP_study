<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<sql:query var="rs" dataSource="jdbc/myoracle">
		select * from tempmember
	</sql:query>
	<table border="1">
		<tr><%-- 필드명 출력 --%>
			<c:forEach var="columnName" items="${rs.columnNames}">
				<th><c:out value="${columnName}" /></th>
			</c:forEach>
		</tr>
	</table>
</body>
</html>