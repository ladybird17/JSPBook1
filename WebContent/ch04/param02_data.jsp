<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include, param 액션태그</title>
</head>
<body>
	<%
	String titleURL = request.getParameter("title");
	%>
	<h3><%= java.net.URLDecoder.decode(titleURL) %></h3>
	Today is : <%= request.getParameter("data") %>
</body>
</html>