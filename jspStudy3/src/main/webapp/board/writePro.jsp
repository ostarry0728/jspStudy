<%@ page contentType="text/html; charset=UTF-8"%>
<%
boolean flag = (Boolean) request.getAttribute("flag");
if (flag == true) {
	response.sendRedirect("list.do");
} else {
%>
<script>
	alert("게시판글등록이 실패되었습니다.");
	history.go(-1);
</script>
<%
}
%>
