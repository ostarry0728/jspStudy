<%@ page contentType="text/html; charset=UTF-8"%>
<!-- 1.사용자정보를 가져온다  -->
<%
String pageNum = (String) request.getAttribute("pageNum");
int check = (Integer) request.getAttribute("check");
if (check == 1) {
%>
<!-- 3.화면설계(자바코드에 해야되는데 - > jsp service함수에서 진행한다. -->
<meta http-equiv="Refresh" content="0;url=list.do?pageNum=<%=pageNum%>">
<%
} else if (check == 2) {
%>
<script language="JavaScript">
	alert("비밀번호가 맞지 않습니다");
	history.go(-1);
</script>
<%
} else {
%>
<script language="JavaScript">
	alert("업데이트에 문제가 발생했습니다.");
	history.go(-1);
</script>
<%
}
%>
