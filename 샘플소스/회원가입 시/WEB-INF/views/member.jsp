<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 페이지</title>
</head>
<body>
	<fieldset>
		<legend>회원 페이지</legend>
		<a href="./index.jsp">메인화면</a><br>
		<br>
		<br>
		<!-- 인증한 사용자 영역 -->
		<sec:authorize access="isAuthenticated()">
		<form method="post" action="./logout.do">
			<input type="submit" value="로그아웃" />
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
		</sec:authorize>
	</fieldset>
	
</body>
</html>