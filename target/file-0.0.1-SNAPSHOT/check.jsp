<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        String subject = request.getParameter("subject");
        String fileName1 = request.getParameter("fileName1");
        String originalName1 = request.getParameter("originalName1");
     %>
	아이디 :<%=id%><br> 
	제목 :<%=subject%><br> 
	첨부파일(클릭시 다운로드)<br> 
	- 파일1 :
	<a href="download.jsp?fileName=<%=fileName1%>"><%=originalName1%></a><br>
	<br>
	   
</body>
</html>
