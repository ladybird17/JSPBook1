<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 데이터값의 유무 검사하기</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		
		var form = document.loginForm;
		
		if(form.id.value == ""){
			alert("아이디를 입력해주세요.");
			form.id.focus();
			return false;
		}
		else if(form.pw.value ==""){
			alert("비밀번호를 입력해주세요.");
			form.pw.focus();
			return false;
		}
		else{
			form.submit();
		}
	}
	
	
	/* 이렇게 해도 된다. button태그의 onclick을 지우고 id를 btn_submit 으로 지정해둬야함*/
	/* window.addEventListener("DOMContentLoaded", function(){
		var btn = document.getElementById("btn_submit");
		btn.addEventListener("click", function(){
			checkLogin();
		});
	}); */
</script>
<body>
	<form name="loginForm" action="validation02_process.jsp" method="post">
		<label for="id">아이디 : </label>
		<input type="text" id="id" name="id"><br>
		<label for="pw">비밀번호 : </label>
		<input type="password" id="pw" name="pw"><br>
		<br>
		<button type="button" onclick="checkLogin()" >전송</button>
	</form>
</body>
</html>