<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String nickname = (String) session.getAttribute("userNickname");
boolean isLoggedIn = nickname != null;
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/home/css/home.css">
</head>

<body>
	<div class="container">
		<%@include file="common/header.jsp"%>

		<%@include file="common/main.jsp"%>

		<%@include file="common/footer.jsp"%>

        <%@include file="common/aside.jsp"%>
	</div>


</body>

</html>