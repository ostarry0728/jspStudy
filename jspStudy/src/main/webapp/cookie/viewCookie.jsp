<%@ page contentType="text/html; charset=euc-kr"%>
<%@ page import="java.net.URLDecoder"%>
<%
Cookie[] cookies = request.getCookies();
%>
<html>
<head>
<title>��Ű���</title>
</head>
<body>
	��Ű ���
	<br>
	<%
	if (cookies != null && cookies.length > 0) {
		for (int i = 0; i < cookies.length; i++) {
	%>
	<%=cookies[i].getName()%>=<%=URLDecoder.decode(cookies[i].getValue(), "UTF-8")%><br>
	<%
	}//end of for
	} else {
	%>
	��Ű�� �������� �ʽ��ϴ�.
	<%
	}
	%>
</body>
</html>