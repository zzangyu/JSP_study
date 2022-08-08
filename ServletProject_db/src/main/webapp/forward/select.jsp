<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>옵션 화면 선택</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/forward/view.jsp"> <!-- request.getContextPath():webapp까지의 경로 -->
		보고싶은 페이지 선택:
		<select name="code">
			<option value="A">A 페이지로 이동합니다.</option>
			<option value="B">B 페이지로 이동합니다.</option>
			<option value="C">C 페이지로 이동합니다.</option>
		</select>
		<input type="submit" value="이동">
	</form>
</body>
</html>