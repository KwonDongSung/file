<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%

	String id = "";
	String subject = "";
	String fileName1 = "";
	String originalName1 = "";
	MultipartRequest multi = null;
	long fileSize =0;
	String fileType ="";

	String uploadPath = request.getRealPath("/uploadfile"); 
	out.println("절대경로 : " + uploadPath +"<br/>");
	try {
	     multi = new MultipartRequest( 
				request, 
				uploadPath,
				1024 * 1024 * 10, 
				"utf-8", 
				new DefaultFileRenamePolicy() 
		);
		id = multi.getParameter("id"); 
		subject = multi.getParameter("subject");
        Enumeration files = multi.getFileNames();
		   while(files.hasMoreElements()){
	           
	            String file1 = (String)files.nextElement();
	            originalName1 = multi.getOriginalFileName(file1);
	            fileName1 = multi.getFilesystemName(file1);
	            fileType = multi.getContentType(file1);
	            File file = multi.getFile(file1);
	            fileSize = file.length();
	        }
	} catch (Exception e) {
		e.getStackTrace();
	} 
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<form action="check.jsp" method="post">
	<input type="hidden" name="id" value="<%=id%>"> 
	<input type="hidden" name="subject" value="<%=subject%>"> 
	<input type="hidden" name="fileName1" value="<%=fileName1%>"> 
	<input type="hidden" name="originalName1" value="<%=originalName1%>"> 
	<input type="submit" value="업로드 확인">
</form>
</body>
</html>