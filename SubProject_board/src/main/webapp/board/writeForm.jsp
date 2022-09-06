<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/script.js"></script>
<title></title>
</head>

<!-- 새글과 답변글 구분 -->
<body bgcolor="${bodyback_c }">
	<div align="center">
		<b>글 쓰기</b><br><br>
		
		<form action="/SubProject_board/board/writePro.bdo" method="post" name="writeForm" onsubmit="return writeSave()">
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="ref" value="${ref}">
		<input type="hidden" name="step" value="${step}">
		<input type="hidden" name="depth" value="${depth}">
		
			<table width="400" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="${bodyback_c }">
				<tr>
					<td align="right" colspan="2" bgcolor="${value_c }">
						<a href="/SubProject_board/board/list.bdo">글 목록</a>
					</td>
				</tr>
				<!-- 이름 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						이름
					</td>
					<td>
						<input type="text" size="12" maxlength="12" name="writer">
					</td>
				</tr>
				<!-- 이메일 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						이메일
					</td>
					<td>
						<input type="text" size="30" maxlength="30" name="email">
					</td>
				</tr>
				<!-- 제목 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						제목
					</td>
					<td width="330">
					<c:if test="${num eq 0 }">
						<input type="text" size="50" maxlength="50" name="subject">					
					</c:if>
					<c:if test="${num ne 0 }">
						<input type="text" size="50" maxlength="50" name="subject" value="[답변]">
					</c:if>
					</td>
				</tr>
				<!-- 내용 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						내용
					</td>
					<td>
						<textarea rows="13" cols="50" name="content"></textarea>
					</td>
				</tr>
				<!-- 비밀번호 -->
				<tr>
					<td width="70" bgcolor="${value_c }" align="center">
						비밀번호
					</td>
					<td>
						<input type="password" size="10" maxlength="10" name="pass">
					</td>
				</tr>
				
				<tr>
					<td colspan="2" bgcolor="${value_c }" align="center">
						<input type="submit" value="글쓰기">
						<input type="reset" value="초기화">
						<input type="button" value="목록" onclick="window.location='/SubProject_board/board/list.bdo'">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>