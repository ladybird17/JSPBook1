<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isScriptingEnabled="false" %>
<!-- isScriptingEnabled ���� false�� �ϸ� JSP ��ũ��Ʈ ���� ��� �Ұ������� -->
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