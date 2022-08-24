<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.jstl.MemberVO, java.util.ArrayList" %>
<%
	MemberVO vo1 = new MemberVO("손오공","son@naver.com",500);
	MemberVO vo2 = new MemberVO("사오정","sa@naver.com",300);
	MemberVO vo3 = new MemberVO("저팔계","jeo@naver.com",200);
	ArrayList<MemberVO> memList = new ArrayList<MemberVO>();
	memList.add(vo1);
	memList.add(vo2);
	memList.add(vo3);
	
	request.setAttribute("memberList", memList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>회원정보</h3>
	<table border="1" width="450">
		<tr>
			<td width="50" align="center">번호</td>
			<td width="100" align="center">이름</td>
			<td width="200" align="center">메일</td>
			<td width="100" align="center">나이</td>
		</tr>
		<c:forEach var="mem" items="${memberList}" varStatus="num">
			<tr>
				<td align="center">${num.count}</td> <!-- varStatus에 변수명 지정해주고 .count로 올려준다? -->
				<td align="center">${mem.name}</td>	
				<td align="center">${mem.email}</td>	
				<td align="center">${mem.age}</td>	
			</tr>
		</c:forEach>
	</table>

</body>
</html>