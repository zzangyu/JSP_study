<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ThumbNail Form</title>
</head>
<body>
	<div align="center">
		<h3>썸네일 이미지 폼</h3>
		<form action="thumbnail.jsp" method="post" enctype="multipart/form-data">
			이미지 파일 : 
			<input type="file" name="filename"><br>
			<input type="submit" value="전송">		
		</form>
	</div>
</body>
</html>