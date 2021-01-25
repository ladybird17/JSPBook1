<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="org.apache.commons.fileupload.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>apache commons 라이브러리로 파일 업로드</title>
</head>
<body>
	<%
	String fileUploadPath = "C:\\java102\\upload";
	
	DiskFileUpload upload = new DiskFileUpload();
	
	/*
	request내장객체에서 multipart/form-data 방식의
	데이터를 모두 가져옴
	크기가 자동으로 줄었다 늘었다 가능한 List 타입으로 저장
	*/
	List items = upload.parseRequest(request);
	
	/*
	Iterator는 반복자.
	반복수행에 최적화됨.
	첫요소부터 끝요소까지 쉽게 출력할 수 있게 만든 클래스
	*/
	Iterator params = items.iterator();
	
	while(params.hasNext()){
		FileItem fileItem = (FileItem)params.next();
		
		/*
		가져온 request의 데이터가
		파일인지 일반 데이터인지 확인
		*/
		if(!fileItem.isFormField()){
			//업로드된 파일(경로포함) 이름을 가져옴
			String fileName = fileItem.getName();
			
			/*
			substring : 지정된 index에서부터 끝까지의 문자열을 잘라내어 반환
			lastIndexOf : 지정된 문자열을 해당 문자열의 끝에서부터 검색하여 문자열이 있는 index위치를 알려줌
			문자열 뒤에서부터 \\가 몇번째에 있는지+1 부터 잘라내서 가져옴
			마지막에 있는 파일명만 가져오게됨*/
			fileName = fileName.substring(fileName.lastIndexOf("\\")+1);
			File file = new File(fileUploadPath+"/"+fileName);
			fileItem.write(file); //파일과 관련된 자원을 저장한다.
		}
	}
	%>
</body>
</html>