<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDto"%>
<%@ page import="user.UserDao"%>
<%@ page import="java.io.PrintWriter"%>

<%
	request.setCharacterEncoding("UTF-8");
	String id = null;
	String pw = null;
	String name = null;
	String email = null;
	String phone = null;
	
	if (request.getParameter("id") != null) {
		id = (String) request.getParameter("id");
	}
	if (request.getParameter("pw") != null) {
		pw = (String) request.getParameter("pw");
	}
	if (request.getParameter("name") != null) {
		name = (String) request.getParameter("name");
	}
	if (request.getParameter("email") != null) {
		email = (String) request.getParameter("email");
	}
	if (request.getParameter("phone") != null) {
		phone = (String) request.getParameter("phone");
	}
	
	if (id == null || pw == null || name == null || email == null || phone == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	UserDao userDao = new UserDao();
	int result = userDao.join(new UserDto(id, pw, name, email, phone));
	if (result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.')");
		script.println("location.href = 'main.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
	if (result == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디 입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp");
		script.println("</script>");
		script.close();
		return;
	}
%>