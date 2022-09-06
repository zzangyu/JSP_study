<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="view/color.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
</head>
<body bgcolor="${bodyback_c }">
	<div align="center">
		<b>글 쓰기</b><br><br>
		
		<form action="/SubProject_board/board/updatePro.bdo?pageNum=${pageNum }" method="post" name="writeForm" onsubmit="return writeSave()">
		
			<table width="400" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="${bodyback_c }">
				<!-- 이름 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						이름
					</td>
					<td width="330" align="left">
						<input type="text" size="12" maxlength="12" name="writer" value="${article.writer }">
						<input type="hidden" name="num" value="${article.num }">
					</td>
				</tr>
				<!-- 제목 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						제목
					</td>
					<td width="330" align="left">
						<input type="text" size="50" maxlength="50" name="subject" value="${article.subject }">
					</td>
				</tr>
				<!-- 이메일 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						이메일
					</td>
					<td width="330" align="left">
						<input type="text" size="30" maxlength="30" name="email" value="${article.email }">
					</td>
				</tr>
				
				<!-- 내용 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						내용
					</td>
					<td width="330" align="left">
						<textarea rows="13" cols="50" name="content">${article.content }</textarea>
					</td>
				</tr>
				<!-- 비밀번호 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						비밀번호
					</td>
					<td width="330" align="left">
						<input type="password" size="10" maxlength="10" name="pass">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" bgcolor="${value_c }" align="center">
						<input type="submit" value="글 수정">
						<input type="reset" value="초기화">
						<input type="button" value="목록" onclick="window.location.href='/SubProject_board/board/list.bdo?pageNum=${pageNum }'">
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>