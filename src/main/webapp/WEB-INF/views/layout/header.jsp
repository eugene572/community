<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

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
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="/js/style.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
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
				<c:otherwise>
					<ul class="navbar-nav" style="float:right;">
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/board/saveForm">작성하기</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/">소식보기</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/auth/loginForm">로그인</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/board/location">보호소 위치/시설</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/board/messageMain">쪽지</a></li>
						<li class="nav-item"><a class="nav-link" style="color:black;" href="/user/updateForm">회원정보</a></li>
                        <li class="nav-item"><a class="nav-link" style="color:black;" href="/logout">로그아웃</a></li>
                        <li class="nav-item"><a class="nav-link" style="color:black; margin-left: 800px;">${principal.user.username} 님, 안녕하세요</a></li>
					</ul>

				</c:otherwise>
			</c:choose>
		</div>
	</nav>
	<br />