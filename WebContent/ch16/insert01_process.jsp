<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
문제 1. insert01.jsp를 기반으로 
update, delete용 jsp도 생성하여
데이터를 수정 및 삭제하세요. 
-->
	<%@ include file="dbconn.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	
	Statement stmt = null;
	
	try{
		String query = "INSERT INTO member ";
		query += "(id, passwd, name) ";
		query += "VALUES ";
		query += "("+id+",'"+pw+"','"+name+"')";
		
		stmt = conn.createStatement();
		/* stmt.execute(query);
		out.println("member 테이블 삽입이 성공했습니다."); */
		int result = stmt.executeUpdate(query);
		out.println("member 테이블에 "+result+"행 삽입을 성공했습니다.");
	}
	catch(SQLException ex){
		out.println("member 테이블 삽입이 실패했습니다.");
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