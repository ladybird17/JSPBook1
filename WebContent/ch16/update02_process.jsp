<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PreparedStatement UPDATE</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	
	PreparedStatement pmt = null;
	
	try{
		String query = "UPDATE member SET ";
		query += "name = ?, passwd = ? ";
		query += "WHERE id = ?";
		
		pmt = conn.prepareStatement(query);
		pmt.setString(1, name);
		pmt.setString(2, pw);
		pmt.setString(3, id);
		
		int result = pmt.executeUpdate();
		out.println("member 테이블에 데이터를 "+result+"개 수정하였습니다.");
		
	}
	catch(SQLException ex){
		out.println("member 테이블에 데이터 수정을 실패했습니다.<br>");
		out.println("SQLException : "+ex.getMessage());
	}
	finally{
		if(pmt != null){
			pmt.close();
		}
		if(conn!= null){
			conn.close();
		}
	}
	%>
</body>
</html>