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
	<div>
		<sec:authorize access="isAuthenticated()">
			<p>
				principal :
				<sec:authentication property="principal" />
			</p>
			<p>
				principal.username :
				<sec:authentication property="principal.username" />
			</p>
			<p>
				principal.authorities :
				<sec:authentication property="principal.authorities" />
			</p>
		</sec:authorize>
	</div>
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

		<!-- 모든 사용자 접근 가능 -->
		<a href="./all.do">모든 사용자 접근권한</a><br>

		<sec:authorize access="hasAnyRole('USER','ADMIN','SYSADMIN')">
			<a href="./member.do">회원 권한</a>
			<br>
		</sec:authorize>

		<sec:authorize access="hasAnyRole('ADMIN','SYSADMIN')">
			<a href="./admin.do">관리자 권한</a>
			<br>
			<!-- 
		파일명으로 권한설정을 하기위한 예시
		/sample/*Manager*.do -> security-context.xml 설정 
		-->
			<a href="./adminManager1.do">관리자 권한1</a>
			<br>
			<a href="./adminManager2.do">관리자 권한2</a>
			<br>
		</sec:authorize>

		<sec:authorize access="hasRole('SYSADMIN')">
			<a href="./system.do">시스템 관리자 권한</a>
		</sec:authorize>

		<br> <br>

		<!--
		인증한 모든 사용자 영역
		logout시에도 form tag로 method는 post로 처리해야 security 내부에서 자동으로 logout 처리를 진행함.
		csrf 설정(/WEB-INF/spring/appServlet/security-context.xml 내 security:csrf disabled="false" 설정)이 false일 때 csrf tag정보를 넘겨줘야 함.
		-->
		<sec:authorize access="isAuthenticated()">
			<form method="post" action="./logout.do">
				<input type="submit" value="로그아웃" /> <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
			</form>
		</sec:authorize>

	</fieldset>

	<br>
	<hr>
	<br>

	<h2>Spring Security Tag Liblary</h2>
	<table border="1" cellpadding="3" cellspacing="0">
		<tbody>
			<tr>
				<td text-align:center;">표현식</td>
				<td text-align:center;">설명</td>
			</tr>
			<tr>
				<td>hasRole('role')</td>
				<td>해당 권한이 있을 경우</td>
			</tr>
			<tr>
				<td>hasAnyRole('role1,'role2')</td>
				<td>포함된 권한 중 하나라도 있을 경우</td>
			</tr>
			<tr>
				<td>isAuthenticated()</td>
				<td>권한에 관계없이 로그인 인증을 받은 경우</td>
			</tr>
			<tr>
				<td>isFullyAuthenticated()</td>
				<td>권한에 관계없이 인증에 성공했고, 자동 로그인이 비활성인 경우</td>
			</tr>
			<tr>
				<td>isAnonymous()</td>
				<td>권한이 없는 익명의 사용자일 경우</td>
			</tr>
			<tr>
				<td>isRememberMe()</td>
				<td>자동 로그인을 사용하는 경우</td>
			</tr>
			<tr>
				<td>permitAll</td>
				<td>모든 경우 출력함</td>
			</tr>
			<tr>
				<td>denyAll</td>
				<td>모든 경우 출력하지 않음</td>
			</tr>
		</tbody>
	</table>
</body>
</html>