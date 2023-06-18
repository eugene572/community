<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<div class="container">
	<form>
		<input type="hidden" id="id" value="${principal.user.id}" />
		<div class="form-group">
			<label for="username" style="margin-left:410px;">아이디 </label>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="text" value="${principal.user.username }" class="form-control" id="username" readonly>
		</div>
		
		<c:if test="${empty principal.user.oauth}">
			<div class="form-group">
				<label for="password" style="margin-left:410px;">비밀번호</label>
				<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="password" value="${principal.user.password }" class="form-control" id="password" readonly>
			</div>
		</c:if>
		
		<div class="form-group">
			<label for="email" style="margin-left:410px;">이메일</label>
			<input style="display:block; margin: 0 auto; width:300px; height:50px;" type="email" value="${principal.user.email}" class="form-control" id="email" readonly>
		</div>
		
	</form>


</div>

<script src="/js/user.js"></script>


