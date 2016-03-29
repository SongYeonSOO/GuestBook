<%@page import="com.estsoft.DB.MySQLWebDBConnection"%>
<%@page import="com.estsoft.GuestBook.dao.GuestBookDao"%>
<%@page import="com.estsoft.GuestBook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String passwd = request.getParameter("password");
	String message = request.getParameter("content");
	GuestBookVo vo = new GuestBookVo();
	vo.setName(name);
	vo.setMessage(message);
	vo.setPasswd(passwd);

	GuestBookDao dao = new GuestBookDao(new MySQLWebDBConnection());
	dao.insert(vo);

	//insert를 하는 페이지에서 계속 F5를 누르면 계속 INSERT가 진행된다 -> 302 redirect를 이용해서 insert가 추가로 되지않도록
	response.sendRedirect("/GuestBook/index.jsp");
	//or index는 생략가능 !
	//response.sendRedirect("/GuestBook");
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
