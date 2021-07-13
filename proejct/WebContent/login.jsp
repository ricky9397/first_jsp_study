<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OHMYGOT</title>
<link rel="stylesheet" href="./css/login.css">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">

</head>

<body>
	<nav class="navbar">
		<div class="navbar_logo">
			<i class="fab fa-accusoft"></i> <a href="main.jsp">OHMYGOT</a>
		</div>

		<ul class="navbar_menu">
			<li><a href="main.jsp">Home</a></li>
			<li><a href="login.jsp">로그인</a></li>
			<li><a href="join.jsp">회원가입</a></li>
			<li><a href="">게시판</a></li>
			<li><a href="">FAQ</a></li>
		</ul>

		<ul class="navbar_icons">
			<li><i class="fab fa-twitter"></i></li>
			<li><i class="fab fa-facebook-f"></i></li>
		</ul>

		<a href="#" class="navbar_toogleBtn"> <i class="fas fa-bars"></i>
		</a>
	</nav>
	<div id="wraps">
		<header>
			<h1>로 그 인</h1>
		</header>

		<form action="loginOK.jsp" method="post" id="login_form">
			<table>
				<tr>
					<td><label for="loginId">아 이 디</label> <input type="text"
						id="id" placeholder="아이디">
						<div class="msg"></div></td>
					<td><label for="loginPw">비 밀 번 호</label> <input
						type="password" id="pw" placeholder="비밀번호">
						<div class="msg"></div></td>
					<td><input type="submit" value="로그인"></td>
				</tr>
			</table>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"
		integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
		crossorigin="anonymous">
        </script>
	<script src="https://kit.fontawesome.com/a639687fae.js"
		crossorigin="anonymous"></script>
	<script src="./js/login.js" defer></script>
</body>
</html>
