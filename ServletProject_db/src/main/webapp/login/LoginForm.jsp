<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h1>파라미터 전달방식</h1>
	<form action="Login" method="get">
	<fieldset>
		<legend>로그인</legend>
		<ul>
			<li>
				<label for="userid">아이디</label>
				<input type="text" name="userid">
			</li>
			<li>
				<label for="passwd">비밀번호</label>
				<input type="text" name="passwd">
			</li>
			<li>
				<input type="submit" value="전송">
			</li>

		</ul>
	
	
	</fieldset>
	</form>
</body>
</html>