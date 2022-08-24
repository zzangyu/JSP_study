<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h3>EL(Expression Language)</h3>
	<p>연산자를 사용</p>
	<table border="1">
		<tr>
			<td>
				<b>표현식</b>
			</td>
			<td>
				<b>값</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${2+5}</b>
			</td>
			<td>
				<b>${2+5}</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${4/5} \${4 div 5}</b>
			</td>
			<td>
				<b>${4/5}</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${5 mod 10}</b>
			</td>
			<td>
				<b>${5 mod 10}</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${5 < 10} \${5 lt 10}</b>
			</td>
			<td>
				<b>${5 < 10}</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${10 < 5} \${10 gt 5}</b>
			</td>
			<td>
				<b>${10 < 5}</b>
			</td>
		</tr>
		<tr>
			<td>
				<b>\${(5 > 3) ? 5 : 3}</b>
			</td>
			<td>
				<b>${(5 > 3) ? 5 : 3}</b>
			</td>
		</tr>
	</table>
</body>
</html>