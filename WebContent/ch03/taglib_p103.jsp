<!-- JSP웹프로그래밍 p103 문제6 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="i" begin="0" end="10" step="1">
		<c:if test="${i%2==0}">
			<c:out value="${i}"/>
		</c:if>
	</c:forEach>
</body>
</html>