<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="javax.sql.DataSource"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.naming.Context"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<h2> DBCP 연동 </h2>
	
	<%
		Context initContext = new InitialContext();
	
		DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myoracle"); // context쪽 name이랑 일치가 돼야된다.
		Connection conn = ds.getConnection();
		
		out.println("DBCP 연동 성공");
	%>
</body>
</html>