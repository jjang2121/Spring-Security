
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<fieldset>
		<legend>로그인 페이지</legend>
		<h2><c:out value="${error}" /></h2>
		<h2><c:out value="${logout}" /></h2>
		<h2>로그인 페이지</h2>
		<form method="post" action="./login">
			<div>
				아이디 : <input type="text" name="username" required="required">
			</div>
			<div>
				비밀번호 : <input type="password" name="password" required="required">
			</div>
			<div>
				<!-- 로그인 유지를 위한 처리, 로그아웃 시 유지는 삭제됨 -->
				<label for="remember">로그인 유지</label>
				<input type="checkbox" id="remember" name="remember-me">
			</div>
			<div>
				<input type="submit" value="로그인">
				<input type="button" value="메인화면" onclick="location.href='./index.jsp';">
			</div>
			<!-- 사이트간 위변조 방지를 위한 CSRF 처리 -->
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
	
	</fieldset>
	
</body>
</html>