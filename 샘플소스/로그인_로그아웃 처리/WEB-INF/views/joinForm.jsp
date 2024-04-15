<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>
</head>
<body>
	<fieldset>
		<legend>회원가입 페이지</legend>
		<h2>회원가입 페이지</h2>
		<form method="post" action="./join.do">
			<div>
				아이디 : <input type="text" name="id" required="required">
			</div>
			<div>
				성명 : <input type="text" name="name" required="required">
			</div>
			<div>
				비밀번호 : <input type="password" name="password" required="required">
			</div>
			<div>
				<input type="submit" value="회원가입">
				<input type="button" value="메인화면" onclick="location.href='./index.jsp';">
			</div>
			<!-- 사이트간 위변조 방지를 위한 CSRF 처리 -->
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
	
	</fieldset>
	
</body>
</html>