<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap">
        <header>
            <h1>회원 가입</h1>
        </header>
        
        <form id="join_form">
            <div>
                <table>
                    <tr>
                        <td>
                            아이디<input type="text" id="ID">
                        </td>
                        <td>
                            비밀번호<input type="password" id="PW">
                        </td>
                        <td>
                            비밀번호확인<input type="password" id="PW2">
                        </td>
                        <td>
                            이름<input type="text" id="NAME">
                        </td>
                        <td>
                            <input type="submit" value="로그인">
                        </td>
                    </tr>
                </table>
                
            </div>
        </form>
    </div>
</body>
</html>
