<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="/login/css/login.css">
</head>

<body>
<%@include file="../common/aside.jsp"%>

<c:if test="${not empty alertMsg}">
        <script type="text/javascript">
            alert('${alertMsg}');
        </script>
    </c:if>

    <%
    session.removeAttribute("alertMsg");
    %>
	<div class="container">
		<div class="header">
			<h1>LOGIN</h1>
		</div>

		<form action="/member/login" method="post">
			<input type="text" name="userId" placeholder="ID">
			<input type="password" name="userPwd" placeholder="Pwd">
			<input type="submit" value="로그인">
		</form>

		<div class="bottomBar">
			<div class=" items ">
				<a href="/member/tac">회원가입</a>
			</div>
			<div class=" items">
				<a href="/member/findId">아이디 찾기</a>
			</div>
			<div class=" items ">
				<a href="/member/findPwd">비밀번호 찾기</a>
			</div>
		</div>

	</div>

</body>
</html>