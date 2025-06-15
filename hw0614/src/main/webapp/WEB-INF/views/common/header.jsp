<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="header">
		<div>
			<a href="/home"> <img src="/home/img/logo.png" alt="로고">
			</a>
		</div>


		<div>
			<!-- 언젠가 추가 될 수도-->
		</div>
		<c:if test="${empty loginMember}">
			<div class="joinContainer">
				<a href="/member/tac">회원가입</a>
			</div>

			<div class="loginContainer">
				<a href="/member/login">로그인</a>
			</div>
		</c:if>
		<c:if test="${not empty loginMember}">
		<div class="loginNick">
			<h3>${loginMember.userNick}</h3>
		</div>
		<div class="logoutContainer">
			<a href="/member/logout">로그아웃</a>
		</div>
		</c:if>

	</div>
</body>
</html>