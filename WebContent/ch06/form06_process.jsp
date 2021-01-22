<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%
		request.setCharacterEncoding("UTF-8");
		Enumeration paraNames=request.getParameterNames();
		/* 이름 받아옴 */
		
		while (paraNames.hasMoreElements()){
			/* 받아온 이름으로 데이터 출력 */
			String name=(String)paraNames.nextElement();
			out.println("<tr><td>"+ name +"</td>");
			String paramValue = request.getParameter(name);
			out.println("<td>"+paramValue+"</td></tr>\n");
		}
		%>
	</table>
</body>
</html>