<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 3.화면출력한다 -->
<%
boolean flag = (Boolean) request.getAttribute("flag");
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<br></br>
	<main>
		<%
		if (flag == true) {
			out.println("<b>회원가입을 축하 드립니다.</b><br/>");
			out.println("<a href=login.do>로그인</a>");
		} else {
			out.println("<b>다시 입력하여 주십시오.</b><br/>");
			out.println("<a href=regForm.do>다시 가입</a>");
		}
		%>
	</main>
</body>
</html>