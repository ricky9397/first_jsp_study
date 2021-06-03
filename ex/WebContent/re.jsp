<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%!
	int age;
	%>
	
	<%
	String str = request.getParameter("age");
	age = Integer.parseInt(str);
	
	if(age >= 20){
		response.sendRedirect("good.jsp");
	} else {
		response.sendRedirect("ng.jsp");
	}
	%>
</body>
</html>