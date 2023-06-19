<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

    <form action="findIdResult">
    <div class="form-group" style="text-align:center;">
    <h1 style="text-align:center;">아이디 찾기 페이지</h1>
    <b style="text-align:center;">이메일</b>
    <input type="text" style="display:block; margin:0 auto; width:300px; height:50px;" name="email" placeholder="등록한 이메일을 입력해주세요."><br/><br/>
    <button type="submit" class="btn btn-black" style="display:block; margin:0 auto; width:200px; height:50px;" value="아이디 찾기">아이디 찾기</button>
    <input type="button" style="margin-bottom:10px;" value="취소" onClick="history.back()">
    </div>
    </form>

<body>
</html>