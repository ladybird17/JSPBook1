<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 비밀번호 값이 숫자인지 검사하기</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		
		var form = document.loginForm;
		
		for(i=0; i<form.id.value.length; i++){
			
			var ch = form.id.value.charAt(i);
			
			if((ch<'a'||ch>'z')&&(ch>'A'||ch<'Z')&&(ch>'0'||ch<'9')){
				alert("아이디는 영문 소문자만 입력 가능합니다.");
				form.id.select();
				return;
			}
		}
		
		if(isNaN(form.pw.value)){
			alert("비밀번호는 숫자만 입력해야 합니다.");
			form.pw.select();
			return;
		}
		
		form.submit();

	}

</script>
<body>
	<form name="loginForm" action="validation04_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<br>
		<button type="button" onclick="checkLogin()" >전송</button>
	</form>
</body>
</html>