<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 페이지에 입력한 아이디아 비밀번호 출력하기</title>
</head>
<script type="text/javascript">
	function checkForm(){
		alert("아이디 : "+document.loginForm.id.value + "\n" + "비밀번호 : "+ document.loginForm.pw.value);
	}
</script>
<body>
	<form name="loginForm">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<br>
		<button type="button" onclick="checkForm()">전송</button>
	</form>
</body>
</html>