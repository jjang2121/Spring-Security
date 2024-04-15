<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오류 페이지</title>
</head>
<body>
	<fieldset>
		<legend>권한없음</legend>
		<h2><c:out value="${SPRING_SECURITY_403_EXCEPTION.getMessage()}" /></h2>
		<h2><c:out value="${msg}" /></h2>
		<div><a href="./index.jsp">메인화면</a></div>
	</fieldset>
	
</body>
</html>