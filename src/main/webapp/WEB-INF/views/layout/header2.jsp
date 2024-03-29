<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal"/>
</sec:authorize>

<!DOCTYPE html>
<html lang="en">
<head>
<title>동물 보호소</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>


<link rel="stylesheet" href="/js/style.css">

</head>
<body>
	<nav class="navbar navbar-expand-md bg-white navbar-white">
		<a class="navbar-brand" href="/board/main"><img src="/image/pet1.png" height="85" width="85"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">

			<c:choose>
				<c:when test="${empty principal}">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/auth/loginForm">로그인</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/auth/joinForm">회원가입</a></li>
					</ul>
				</c:when>

			</c:choose>
		</div>
	</nav>
	<br />