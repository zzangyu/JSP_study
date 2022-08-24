<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); /* 나한테 던질때는 인코딩을 해줘야한다. */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<form action="elEx05.jsp" method="post">
		이름 : 
		<input type="text" name="name" value="${param['name']}">
		<input type="submit" value="확인">
	</form>
	
	<p>
		이름 : ${param.name}
	</p>
</body>
</html>