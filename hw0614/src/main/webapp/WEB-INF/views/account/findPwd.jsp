<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<c:if test="${not empty notFoundPwd}">
        <script type="text/javascript">
            alert('${notFoundPwd}');
        </script>
    </c:if>

    <%
    session.removeAttribute("notFoundPwd");
    %>
	<div class="container">
		<div class="header">
			<h1>FindPwd</h1>
        </div>

        <c:if test="${empty pwd}">
            <form action="/member/findPwd" method="post">
                <input type="text" name="userId" placeholder="userId">
                <input type="text" name="userNumber" placeholder="UserNumber">
                <input type="submit" value="비밀번호 찾기">
            </form>

            <div class="bottomBar">
                <div class=" items ">
                    <a href="/member/tac">회원가입</a>
                </div>
                <div class=" items ">
                    <a href="/member/findId">아이디 찾기</a>
                </div>
            </div>
        </c:if>

        <c:if test="${not empty pwd}">
            <div class="findPwd">
                <h1 style="color : white" >회원님의 비밀번호는 : ${pwd.userPwd}입니다</h1>
            </div>
        </c:if>
        	<%
        	session.removeAttribute("pwd");
        	%>
	</div>
</body>
</html>