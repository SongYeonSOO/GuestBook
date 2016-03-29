<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
		String no = request.getParameter("id");
	%>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form method="post" action="delete.jsp">
	
	<!-- 값만 저장하고싶을때 hidden을 사용한다. -->
	<input type='hidden' name="id" value="<%=no%>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value=" 확인 "></td>
			<td><a href="index.jsp">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
</body>
</html>