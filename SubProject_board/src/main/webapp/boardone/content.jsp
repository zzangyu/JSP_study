<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="com.boardone.BoardDAO" %>
    <%@ page import="com.boardone.BoardVO" %>
    <%@ page import="java.util.List" %>
    <%@ page import="java.text.SimpleDateFormat" %>
    <%@ include file="view/color.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pageNum = request.getParameter("pageNum");
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
	
	try {
		BoardDAO dbPro = BoardDAO.getInstance();
		BoardVO article = dbPro.getArticle(num);
		
		int ref = article.getRef();
		int step = article.getStep();
		int depth = article.getDepth();
		
%>
<body bgcolor="<%= bodyback_c%>">
	<div align="center"><b>글 상세 보기</b><br><br>
		<form>
			<table width = "500" border = "1" cellpadding ="0" cellspacing = "0" align = "center">
         	<tr height = "30"> <!-- 글 번호 하고 조회수가 나와야됨 -->
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">글번호</td>
            	<td align = "center" width ="125">
            		<%= article.getNum() %>
            	</td>
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">조회수</td>
            	<td align = "center" width ="125">
            		<%= article.getReadCount() %>
            	</td>
         	</tr>
         
         	<!--작성자와 작성일을  -->
         	<tr height = "30"> <!-- 글 번호 하고 조회수가 나와야됨 -->
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">작성자</td>
            	<td align = "center" width ="125">
            		<%= article.getWriter() %>
            	</td>
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">작성일</td>
            	<td align = "center" width ="125">
            		<%= sdf.format(article.getRegdate()) %>
            	</td>
         	</tr>   
            
            
            <!--글 제목  글 내용 출력-->
         	<tr height = "30">
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">글제목</td>
            	<td align = "center" width ="375" colspan="3">
            		<%= article.getSubject() %>
            	</td>
         	</tr>
         
         	<tr height = "30">
            	<td align = "center" width ="125" bgcolor="<%=value_c%>">글내용</td>
            	<td align = "right" width ="375" colspan="3">
            	<pre><%= article.getContent() %></pre> <!--pre태그 미리 정의된 형식의 텍스트를 정의할 떄 사용-->
            	</td>
         	</tr>   
            
               <!-- -->
         	<tr height = "30">
            	<td align = "right" bgcolor="<%=value_c%>" colspan="4">
                	<input type = "button" value = "글 수정" onclick ="document.location.href='updateForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
                	&nbsp;&nbsp;&nbsp;&nbsp;
                	<input type = "button" value = "글 삭제" onclick ="document.location.href='deleteForm.jsp?num=<%=article.getNum()%>&pageNum=<%=pageNum%>'">
                	&nbsp;&nbsp;&nbsp;&nbsp;
                	<input type = "button" value = "글 목록" onclick ="document.location.href='list.jsp?pageNum=<%=article.getNum()%>'">
                	&nbsp;&nbsp;&nbsp;&nbsp;
            	</td>
         	</tr>   
	<%}catch(Exception e) {} %>
		</form>
	</div>
</body>
</html>