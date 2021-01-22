<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p166 응답콘텐츠 설정하기
		P167 오류응답코드와 오류메시지 보내기
</title>
</head>
<body>
	<%
	response.setCharacterEncoding("utf-8");
	response.setContentType("text/html; charset=utf-8");
	%>
	
	<p>문자 인코딩 : <%=response.getCharacterEncoding() %></p>
	<p>콘텐츠 유형 : <%= response.getContentType() %>
	
	<%
		response.sendError(404,"파일이 없어요");
	%>
</body>
</html>