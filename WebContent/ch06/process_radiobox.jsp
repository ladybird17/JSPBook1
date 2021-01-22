<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8"); %><!-- 한글 안깨지도록 -->
	<p> 나의 취미는 <%= request.getParameter("hobby") %><p>
</body>
</html>