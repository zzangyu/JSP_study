<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.jdbc.*, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP에서 database 연동</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body bgcolor="#FFFFCC">
	<h2>DBCP를 사용한 데이터베이스 연동</h2>
	<h3>회원정보</h3>
	<table bordercolor="#0000FF" border="1">
				<tr>
					<td><strong>ID</strong></td>
					<td><strong>PASSWD</strong></td>
					<td><strong>NAME</strong></td>
					<td><strong>MEM_NUM1</strong></td>
					<td><strong>MEM_NUM2</strong></td>
					<td><strong>E_MAIL</strong></td>
					<td><strong>PHONE</strong></td>
					<td><strong>ZIPCODE/ADDRESS</strong></td>
					<td><strong>JOB</strong></td>
				</tr>
				
				<jsp:useBean id="dao" class="com.jdbc.DBCPTempMember" scope="page" />
				
				<%
					Vector<TempMemberVO> vecList = dao.getMemberList();
					
					int counter = vecList.size();
					
					for(int i = 0; i < vecList.size(); i++) {
						TempMemberVO vo = vecList.elementAt(i);
				
				%>
				
				<tr>
					<td><strong><%= vo.getId()%></strong></td>	
					<td><strong><%= vo.getPasswd()%></strong></td>	
					<td><strong><%= vo.getName()%></strong></td>	
					<td><strong><%= vo.getMem_num1()%></strong></td>	
					<td><strong><%= vo.getMem_num2()%></strong></td>	
					<td><strong><%= vo.getE_mail()%></strong></td>	
					<td><strong><%= vo.getPhone()%></strong></td>	
					<td><strong><%= vo.getZipcode()+"/"+vo.getAddress()%></strong></td>	
					<td><strong><%= vo.getJob()%></strong></td>	
				
				<%
					} // end if
				%>
				</tr>
	
	</table><br><br>
	total records: <%= counter%>

</body>
</html>