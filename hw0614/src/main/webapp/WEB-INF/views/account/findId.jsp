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

    <c:if test="${not empty notFoundId}">
        <script type="text/javascript">
            alert('${notFoundId}');
        </script>
    </c:if>

    <%
    session.removeAttribute("notFoundId");
    %>
	<div class="container">
		<div class="header">
			<h1>FindId</h1>
        </div>

        <c:if test="${empty id}">
            <form action="/member/findId" method="post">
                <input type="text" name="userNumber" placeholder="UserNumber">
                <input type="submit" value="아이디 찾기">
            </form>

            <div class="bottomBar">
                <div class=" items ">
                    <a href="/member/tac">회원가입</a>
                </div>
                <div class=" items ">
                    <a href="/member/findPwd">비밀번호 찾기</a>
                </div>
            </div>
        </c:if>

        <c:if test="${not empty id}">
            <div class="findId">
                <h1 style="color : white" >회원님의 아이디는 : ${id}입니다</h1>
            </div>
        </c:if>
        	<%
        	session.removeAttribute("id");
        	%>
	</div>
</body>
</html>