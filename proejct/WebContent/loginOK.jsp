<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="member.MemberDao"%>
<%@ page import="member.MemberDto"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<%

	MemberDao dao = MemberDao.getInstance();
	
	String id = null;
	String pw = null;
	if(request.getParameter("id") != null){
		id = request.getParameter("id");
	}
	if(request.getParameter("pw") != null){
		pw = request.getParameter("pw");
	}
	if(id == null || pw == null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안된 사항이 있습니다.');");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
	
	int result = dao.login(id, pw);
	
	if(result == 1){
		session.setAttribute("id", id);
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href = 'main.jsp';");
		script.println("</script>");
		script.close();
		return;
	} else if(result == 0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 틀렸습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else if(result == -1){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('존재하지 않는 아이디입니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	} else if(result == -2){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('데이터베이스 오류가 발생했습니다.')");
		script.println("history.back();");
		script.println("</script>");
		script.close();
		return;
	}
%>