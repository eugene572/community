<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container" style="text-align: center;>
	<form style="text-align: center;>
		<div class="form-group" style="text-align: center;">
			<%--<label for="username">아이디</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="text" class="form-control" placeholder="아이디" id="username">
		</div>
		
		<div class="form-group" style="text-align: center;">
			<%--<label for="password">비밀번호</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="password" class="form-control" placeholder="비밀번호" id="password">
		</div>
		
		<div class="form-group" style="text-align: center;">
			<%--<label for="email">이메일</label>--%>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="email" class="form-control" placeholder="이메일" id="email">
		</div>
		
	</form>
	<button id="btn-save" class="btn btn-primary" style="display:block; margin: 0 auto; width:300px; height:50px;">회원가입</button>

</div>

<script src="/js/user.js"></script>



