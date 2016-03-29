<%@ page import="java.util.List"%>
<%@ page import="com.estsoft.DB.MySQLWebDBConnection"%>
<%@ page import="com.estsoft.GuestBook.dao.GuestBookDao" %>
<%@ page import="com.estsoft.GuestBook.vo.GuestBookVo" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	GuestBookDao dao = new GuestBookDao(new MySQLWebDBConnection());
	List<GuestBookVo> list = dao.getList();

	// 이렇게 index에 대해 code를 만들어서 해결함
	//	int count = list.size();
	//	int index =0;
	//			for(GuestBookVo ㅍo : list){ ~~~~~}

	//index 정리

	//아근데 이걸 어떻게 보내지?
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="add.jsp" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="content" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
			</tr>
		</table>
	</form>
	<br>
	<% 	int count = list.size();
	for(GuestBookVo vo:list){
	%>
	<table width=510 border=1>
		<tr>
			<td>[<%=count %>]</td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getReg_date() %></td>
			<td><a href="deleteform.jsp?id=<%=vo.getNo()%>">삭제 </a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getMessage().replace("\r\n","<br>") %></td>
		</tr>
	</table>
	<%
		count--;
	}
	%>
</body>
</html>