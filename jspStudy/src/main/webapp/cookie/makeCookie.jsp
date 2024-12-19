<%@page import="java.net.URLEncoder"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
//쿠키값으로 한글을 웹브라우저에 보낼때는 URLEncoder를 사용해서 보낸다.
Cookie cookie = new Cookie("name", URLEncoder.encode("김동진", "UTF-8"));
response.addCookie(cookie);
%>

<html>
<head><title>쿠키생성</title></head>
<body>
<%= cookie.getName() %> 쿠키의 값 = "<%= cookie.getValue() %>"
</body>
</html>
