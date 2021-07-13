<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>OHMYGOT</title>
	<link rel="stylesheet" href="./css/main.css">
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>
<body>
	
	<div id="wrap">
        <nav class="navbar">
            <div class="navbar_logo">
                <i class="fab fa-accusoft"></i>
                <a href="main.jsp">OHMYGOT</a>
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
            
            <a href="#" class="navbar_toogleBtn">
                <i class="fas fa-bars"></i>
            </a>
        </nav>
    
        <div id="intro">
            <img class="intro_img" src="./img/img2.jpg" alt="이미지 없죵?">
        </div>
    
        <footer id=footer_all>
            <ul class="footer_menu">
                <li>기획</li>
                <li>회사</li>
                <li>비트캠프</li>
                <li>개발자</li>
                <li>김명호</li>
                <li>논리논리논리</li>
            </ul>
        </footer>
    </div>
		
	<script src="https://code.jquery.com/jquery-1.12.4.js"
        integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous">
    </script>
    <script src="https://kit.fontawesome.com/a639687fae.js" crossorigin="anonymous"></script>
    <script src="./js/main.js" defer></script>
</body>
</html>