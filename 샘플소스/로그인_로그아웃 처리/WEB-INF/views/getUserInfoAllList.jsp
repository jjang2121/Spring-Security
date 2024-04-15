<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원리스트 조회</title>
<style type="text/css">
	table, th, td {
		border: 1px solid #ccc;
		border-collapse: collapse;
		padding:4px;
	}
</style>
</head>
<body>
	<fieldset>
		<legend>회원리스트 조회</legend>
		<a href="./index.jsp">메인화면</a><br>
		
		<br>
		<div>
			<table>
				<tr>
					<th>아이디</th>
					<th>성명</th>
					<th>권한</th>
					<th>가입일</th>
				</tr>
			<c:forEach items="${lists}" var="list">
				<tr>
					<td>${list.id}</td>
					<td>${list.name}</td>
					<td>${list.auth}</td>
					<td>
						<fmt:formatDate value="${list.joindate}" pattern="yyyy-MM-dd" />
					</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
		<sec:authorize access="isAuthenticated()">
		<form method="post" action="./logout.do">
			<input type="submit" value="로그아웃" />
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
		</form>
		</sec:authorize>
	</fieldset>
	
</body>
</html>