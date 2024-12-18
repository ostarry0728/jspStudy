<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="view/color.jsp"%>
<%
	request.setCharacterEncoding("UTF-8");
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
%>
<html>
<head>
<title>게시판</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="javascript" src="script.js?timestamp=<%= System.currentTimeMillis() %>"></script>
</head>
<body bgcolor="<%=bodyback_c%>">
<main><b>글삭제</b>
<br></br>
<form method="POST" name="delForm" action="deleteProc.jsp?pageNum=<%=pageNum%>" onsubmit="return deleteSave()"> 
 <input type="hidden" name="num" value="<%=num%>">
 <table border="1" align="center" cellspacing="0" cellpadding="0"	 width="360">
  <tr height="30">
     <td align=center  bgcolor="<%=value_c%>">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr height="30">
     <td align=center >비밀번호 :   
       <input type="password" name="pass" size="8" maxlength="12">
      </td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="<%=value_c%>">
      <input type="submit" value="글삭제" >
      <input type="button" value="글목록"	onclick="document.location.href='list.jsp?pageNum=<%=pageNum%>'">     
   </td>
 </tr>  
</table> 
</form>
</main>
</body>
</html> 