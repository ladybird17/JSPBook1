<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="person" class="ch04.com.dao.Person" scope="request"></jsp:useBean>
	<p> 아이디 : <%= person.getId() %>
	<p> 이  름 : <%= person.getName() %>
	<%
	person.setId(20210120);
	person.setName("부꾸미");
	%>
	<jsp:include page="useBean03.jsp"/>
</body>
</html>