<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container" style="text-align: center;">
	<form action="/auth/loginProc" method="post">
		<div class="form-group" style="text-align: center;">
			<%--<label for="username" style="text-align: center;">Username</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="text" name="username" class="form-control" placeholder="아이디" id="username">
		</div>
				
		<div class="form-group" style="text-align: center;">
			<%--<label for="password">Password</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="password" name="password" class="form-control" placeholder="비밀번호" id="password">
		</div>
		
		<div style="text-align: center;">
		    <button id="btn-login" class="btn btn-primary" style="width:300px; height:50px;">로그인</button>
		</div>

		<a style="text-align: center;" href="https://kauth.kakao.com/oauth/authorize?client_id=42650e8bb8a5013a67136052a4291283&redirect_uri=http://localhost:8000/auth/kakao/callback&response_type=code"><img height = "50px" width = "300px" src="/image/kakao.png" /></a>
	</form>
	
</div>




