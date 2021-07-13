<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="member.MemberDao"%>
<%@ page import="member.MemberDto"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
	MemberDao dao = MemberDao.getInstance();
	
	String id = null;
	String pw = null;
	String name = null;
	String email = null;
	String phone = null;
	if(request.getParameter("id") != null){
		id = request.getParameter("id");
	}
	if(request.getParameter("pw") != null){
		pw = request.getParameter("pw");
	}
	if(request.getParameter("name") != null){
		name = request.getParameter("name");
	}
	if(request.getParameter("email") != null){
		email = request.getParameter("email");
	}
	if(request.getParameter("phone") != null){
		phone = request.getParameter("phone");
	}
	
	if(id == null || pw == null || name == null || email == null || phone == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다.');");
		script.println("history.back");
		script.println("</script>");
		script.close();
		return;
	}
	
	int result = dao.join(new MemberDto(id, pw, name, email, phone));
	
	if(result == 1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입에 성공했습니다.');");
		script.println("location.href = 'main.jsp';");
		script.println("</script>");
		script.close();
		return;
	}
	
	
	
%>