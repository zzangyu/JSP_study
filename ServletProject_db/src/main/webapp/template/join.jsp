<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style type="text/css">
	#formArea {
		margin: auto;
		width: 400px;
		border: 1px solid gray;
		text-align: center;
	}
	h1 {
		text-align: center;
	}
	table {
		width: 380px;
		margin: auto;
		text-align: center;
	}
</style>
</head>
<body>
	<section id="formArea">
		<h1>회원 정보 입력</h1>
		<form action="joinChk.jsp" method="post">
			<table>
				<tr>
					<td><label for="id">아이디:</label></td>
						<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<td><label for="pass">비밀번호:</label></td>
					<td><input type="password" name="pass" id="pass"></td>
				</tr>
				<tr>
					<td><label for="name">이름:</label></td>
					<td><input type="text" name="name" id="name"></td>
				</tr>
				<tr>
					<td><label for="gender">성별:</label></td>
					<td>
						<input type="radio" name="gender" id="gender" value="1" checked="checked">남
						<input type="radio" name="gender" id="gender" value="2">여
					</td>
				</tr>
				<tr>
					<td><label for="age">나이:</label></td>
					<td><input type="text" name="age" id="age"></td>
				</tr>
				<tr>
					<td><label for="email">이메일:</label></td>
					<td><input type="email" name="email" id="email"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송">
						<input type="reset" value="초기화">
					</td>
				</tr>
			</table>
		</form>
	</section>
</body>
</html>