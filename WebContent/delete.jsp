<%@page import="com.estsoft.DB.MySQLWebDBConnection"%>
<%@page import="com.estsoft.GuestBook.dao.GuestBookDao"%>
<%@page import="com.estsoft.GuestBook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	
	String passwd = request.getParameter("password");
	String no = request.getParameter("id");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPasswd(passwd);
	GuestBookDao dao = new GuestBookDao(new MySQLWebDBConnection());
	dao.delete(vo);
	response.sendRedirect("/GuestBook2/index.jsp");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>