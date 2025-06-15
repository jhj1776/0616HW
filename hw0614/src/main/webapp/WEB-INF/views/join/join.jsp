<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JOIN</title>
<link rel="stylesheet" href="/join/css/join.css">
</head>
<body>
<%@include file="../common/aside.jsp"%>
	<div class="container">
		<div class="header">
			<h1>회원가입</h1>
		</div>
		<form action="/member/join" method="post">
			<div class="idContainer">
				<div class="idForm">
					<input type="text" name="userId" placeholder="아이디">
				</div>
			</div>

			<div class="pwdContainer">
				<div class="pwdForm">
					<input type="password" name="userPwd" placeholder="비밀번호">
				</div>
			</div>

			<div class="nickContainer">
				<div class="nickForm">
					<input type="text" name="userNick" placeholder="닉네임">
				</div>
			</div>
			<div class="numContainer">
                <div class="numForm">
                    <input type="text" name="userNumber" placeholder="고유식별 번호">
                </div>
            </div>
			<div class="btn">
				<input type="submit" value="회원가입">
			</div>
		</form>
	</div>
</body>
</html>