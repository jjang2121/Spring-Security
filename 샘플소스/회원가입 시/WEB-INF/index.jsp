<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>처음페이지</title>
</head>
<body>
	<fieldset>
		<legend>처음 페이지</legend>
		<!-- 인증하지 않은 사용자 영역 -->
		<sec:authorize access="isAnonymous()">
			<a href="./loginForm.do">로그인</a>
			<br>
			<a href="./joinForm.do">회원가입</a>
			<br>
			<a href="./autoJoin.do">자동 회원가입 처리</a>
			<br>
			<a href="./getUserInfoAllList.do">회원정보 조회</a>
			<br>
			<br>
		</sec:authorize>


</body>
</html>