<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	
	Statement stmt = null;
	
	try{
		String query = "DELETE FROM member ";
		query += "WHERE id = "+id;
		
		stmt = conn.createStatement();
		int result = stmt.executeUpdate(query);
		out.println("member 테이블에서 "+result+"행 삭제를 성공했습니다.");
	}
	catch(SQLException ex){
		out.println("member 테이블에서 "+id+"의 정보 삭제를 실패했습니다.<br>");
		out.println("SQLException : "+ex.getMessage());
	}
	finally{
		if(stmt!=null){
			stmt.close();
		}
		if(conn!=null){
			conn.close();
		}
	}
	%>
</body>
</html>