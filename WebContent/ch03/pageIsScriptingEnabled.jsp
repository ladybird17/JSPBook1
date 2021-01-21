<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isScriptingEnabled="false" %>
<!-- isScriptingEnabled 값을 false로 하면 JSP 스크립트 문법 사용 불가능해짐 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	int a = 10;
	int b= 20;
	int result = a+b;
	%>
	
	<%= result %>
</body>
</html>