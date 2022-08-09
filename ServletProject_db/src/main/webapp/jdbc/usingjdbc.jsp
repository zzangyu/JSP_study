<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String id = "",
	passwd = "",
	name ="",
	mem_num1="",
	mem_num2="",
	e_mail="",
	phone="",
	zipcode="",
	address="",
	job="";
	
	int counter = 0;
	
	try {
		
	
		
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	} catch (SQLException ss) {
		System.out.println("sql Exception");
	} catch (Exception e) {
		System.out.println("Exception");
	} finally {
		if(conn != null) try{ conn.close(); }catch(SQLException s1){}
		if(stmt != null) try{ stmt.close(); }catch(SQLException s2){}
		if(rs != null) try{ rs.close(); }catch(SQLException s3){}
	}
%>
</body>
</html>