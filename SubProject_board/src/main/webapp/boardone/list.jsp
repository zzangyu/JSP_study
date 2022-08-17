<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.boardone.BoardDAO" %>
    <%@ page import="com.boardone.BoardVO" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ include file="view/color.jsp" %>
    
<%!
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	int count = 0;
	int number = 0;
	List<BoardVO> articleList = null;
	BoardDAO dbPro = BoardDAO.getInstance();
	
	count = dbPro.getArticleCount();
	
	if(count > 0) { // 글이 있다.
		articleList = dbPro.getArticles();
	}
	
	number = count;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body bgcolor="<%= back_c%>">
	<div align="center"><b>글 목록(전체 글:<%= count%>)</b>
		
		<table width="700">
			<tr>
				<td align="right" bgcolor="<%= value_c%>">
					<a href="writeForm.jsp">글 쓰기</a>
				</td>
			</tr>
		</table>
		
		<% if(count == 0) { %>
		
		<table width="700">
			<tr>
				<td align="right" border="1" cellpadding="0" cellspacing="0">
					게시판에 저장된 글이 없습니다.
				</td>
			</tr>
		</table>
		
		<% } else { %>
		
		<table width="700" border="1" cellpadding="0" cellspacing="0" align="center">
			<tr height="30" bgcolor="<%= value_c%>">
				<td align="center" width="50">번호</td>
				<td align="center" width="250">제목</td>
				<td align="center" width="100">작성자</td>
				<td align="center" width="150">작성일</td>
				<td align="center" width="50">조회수</td>
				<td align="center" width="100">IP</td>
				
			</tr>
			<%
			for(int i = 0; i < articleList.size(); i++) {
				BoardVO article = (BoardVO)articleList.get(i);
			%>
			<tr height="30">
				<td align="center" width="50"><%= number-- %></td>
				<td align="center" width="250">
					<a href="content.jsp?num=<%= article.getNum() %>&pageNum=1"><%= article.getSubject() %></a>
					<% if(article.getReadCount() >= 20) {%>
						<img src="img/hot.png" border="0" height="16">
					<% } %>
				</td>
				<td align="center" width="100"><a href="mailto:<%= article.getEmail() %>"><%= article.getWriter() %></a></td>
				<td align="center" width="150"><%= sdf.format(article.getRegdate()) %></td>
				<td align="center" width="50"><%= article.getReadCount() %></td>
				<td align="center" width="100"><%= article.getIp() %></td>
			</tr>
			
			<%}%>
			
		</table>
		
		<% } %>
		
	
	</div>	
</body>
</html>