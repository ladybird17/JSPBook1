<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	function checkForm(){
		// 검색할 정규 표현식
		var regExp = /Java/i; //var regExp= new RegExp('java','i');
		
		//검색받을 텍스트
		var str = document.frm.title.value;
		
		//정규식으로 검색
		var result = regExp.exec(str);
		alert(result[0])
	}
</script>
<body>
	<form name="frm">
		<label for="title">제목</label>
		<input type="text" name="title"><br>
		<button type="button" onclick="checkForm()">전송</button>
	</form>
</body>
</html>