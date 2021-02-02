<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add session info</title>
</head>
<body>
	<%
	for(int i=0; i<5; i++){
		String name = "sessionName"+i; 
		String value = name+" value("+i+")";
		
		session.setAttribute(name,value);
	}
	%>
	
	<button id="btn_create">세션 생성하기</button>
	<button id="btn_clear">세션 삭제하기</button>
	<br>
	<a href="./session03.jsp">session03으로 이동</a>
</body>
</html>