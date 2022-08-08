<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pagefile = request.getParameter("page");
	if(pagefile == null) {
		pagefile = "newitem";
	} else if (pagefile != null) {
		pagefile = "bestitem";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
	table {
		margin: auto;
		width: 960px;
		height: 720px;
		color: gray;
		border: 1px solid red;
	}
	body {
		background-image: url('대륙.PNG');
	}
</style>
</head>
<body>
	<table>
		<tr>
			<td height="43" colspan="3" align="left">
				<jsp:include page="top.jsp"></jsp:include>
			</td>
		</tr>
		<tr>
			<td width="15%" align="right" valign="top"><br>
				<jsp:include page="left.jsp"></jsp:include>
			</td>
			<td colspan="2" align="center">
				<jsp:include page='<%= pagefile+".jsp" %>'/>
			</td>
		</tr>
		<tr>
			<td width="100%" height="40" colspan="3">
				<jsp:include page="bottom.jsp"></jsp:include>
			</td>
		</tr>
	</table>
</body>
</html>