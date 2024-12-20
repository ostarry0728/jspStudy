<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setAttribute("score", 85);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test="${score ge 90}">
			<p>당신의 성적은 ${score} 입니다.</p>
		</c:when>
		<c:when test="${score ge 80}">
			<p>당신의 성적은 ${score} 입니다.</p>
		</c:when>
		<c:when test="${score ge 70}">
			<p>당신의 성적은 ${score} 입니다.</p>
		</c:when>

		<c:otherwise>당신의 성적은 F 입니다.</c:otherwise>
	</c:choose>
</body>
</html>