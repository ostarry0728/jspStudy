<%@page import="java.util.HashMap"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
HashMap<String, Object> hashMap = new HashMap<String, Object>();
hashMap.put("age", "100");
hashMap.put("name", "홍길동");
hashMap.put("email", "길동@naver.com");
%>
<c:set var="hashMap" value="<%=hashMap%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4>1부터 100까지 홀수의 합</h4>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i}" />
	</c:forEach>
	<p>결과값:${sum}</p>

	<h4>구구단 4단</h4>
	<ul>
		<c:forEach var="i" begin="1" end="9" step="1">
			<li>4 * ${i} = ${4*i}</li>
		</c:forEach>
	</ul>

	<h4>특정위치 배열출력</h4>
	<c:set var="arrayInt" value="<%=new int[] { 1, 2, 3, 4, 5 }%>"></c:set>
	<ul>
		<c:forEach var="i" items="${arrayInt}" begin="2" end="4" step="1">
			<li>배열의 위치값 : ${i}</li>
		</c:forEach>
	</ul>

	<h4>Map값을 출력</h4>
	<ul>
		<c:forEach var="data" items="${hashMap}">
			<li>키값(${data.key}) = ${data.value}</li>
		</c:forEach>
	</ul>
</body>
</html>