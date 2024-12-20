<%@page import="java.io.FileReader"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
FileReader reader = null;
String path = request.getParameter("path"); //http://~~~~outExam.jsp?path=/jstl/setExam.jsp

try {
	reader = new FileReader(getServletContext().getRealPath(path));
%>
<p>소스코드 보여주기</p>
<pre>
	<c:out value="<%=reader%>" escapeXml="true" />
	</pre>

<%
} catch (Exception e) {
e.printStackTrace();
} finally {
if (reader != null) {
	try {
		reader.close();
	} catch (Exception e) {
	}
}
}
%>