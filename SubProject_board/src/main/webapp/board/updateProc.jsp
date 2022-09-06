<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${check eq '1' }">
	<meta http-equiv="Refresh" content="0;url=/SubProject_board/board/list.bdo?pageNum=${pageNum }">
</c:if>
<c:if test="${check eq '0' }">
	비밀번호가 맞지 않습니다.
	<a href="javascript:history.go(-1)">글 수정 폼으로 돌아가기</a>
</c:if>
</body>
</html>