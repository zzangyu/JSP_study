<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="vo" class="com.jstl.MemberVO" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<!-- target: property 값의 객체, vo를 따라가라~ -->
	<!-- property: vo의 set과 동일하다. -->

	<!-- 1번 -->
	<c:set property="name" value="홍길동" target="${vo}" /> 
	<!-- 2번 -->
	<c:set property="email" target="${vo}" >
		hong@naver.com
	</c:set>
	<!-- 이게 제일 많이 쓰이는 방법 -->
	<!-- 3번 -->
	<c:set var="age" value="30" />
	<c:set target="${vo}" property="age" value="${age}"/>
	
	<h3>회원정보</h3>
	<ul>
		<li>이름 : ${vo.name}</li>
		<li>이메일 : ${vo.email}</li>
		<li>나이 : ${vo.age}</li>
	</ul>
</body>
</html>