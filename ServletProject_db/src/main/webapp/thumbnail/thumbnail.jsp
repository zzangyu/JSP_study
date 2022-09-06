<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.awt.Graphics2D" %>
<%@ page import="java.awt.image.renderable.ParameterBlock" %>
<%@ page import="java.awt.image.BufferedImage" %>
<%@ page import="javax.media.jai.JAI" %>
<%@ page import="javax.media.jai.RenderedOp" %>
<%@ page import="javax.imageio.ImageIO" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %> <!-- 파일 중복 방지 -->
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	String imagePath = request.getRealPath("upload");
	int size = 15 * 1024 * 1024; /* 15mb */
	String filename = "";
	
	try {
		 MultipartRequest multi = new MultipartRequest(request, 
				 imagePath, size, "utf-8", new DefaultFileRenamePolicy());
		 
		 Enumeration files = multi.getFileNames();
		 String file = (String)files.nextElement(); //형변환 시켜줘야됨
		 filename = multi.getFilesystemName(file);
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	ParameterBlock pb = new ParameterBlock(); /* 이미지를 불러올 때 씀 */
	pb.add(imagePath+"/"+filename);

	RenderedOp rOp = JAI.create("fileload", pb);
	BufferedImage bi = rOp.getAsBufferedImage(); /* buffer에 담음 */
	
	BufferedImage thumb = new BufferedImage(500, 500, BufferedImage.TYPE_INT_RGB); /* 타입, 크기를 지정 */
	
	Graphics2D g = thumb.createGraphics();
	
	g.drawImage(bi, 0, 0, 500, 500, null); /* top0, left0, 가로, 세로, 제목 null */
	
	File file = new File(imagePath+"/sm_"+filename); /* sm = small */
	ImageIO.write(thumb, "jpg", file);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이미지 썸네일</title>
</head>
<body>
	- 원본 이미지 - <br>
	<img src="/ServletProject_db/upload/<%=filename%>"><p>
	- 썸네일 이미지 - <br>
	<img src="/ServletProject_db/upload/sm_<%=filename%>"><p>
</body>
</html>