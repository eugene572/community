<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
    .memberPhoneBtn{
          border: 0;
          outline: none;
          font-size: 15px;
          margin: 30px;
          background: black;
          color: white;
          padding: 10px;
          cursor: pointer;
          border-radius: 10px;
          width:150px;
        }
    .memberPhoneBtn2{
      border: 0;
      outline: none;
      font-size: 15px;
      margin: 30px;
      background: #868e96;
      color: white;
      padding: 10px;
      cursor: pointer;
      border-radius: 10px;
      width:150px;
    }
</style>
</head>
<body>

    <form action="findIdResult">
    <div class="form-group" style="text-align:center;">
    <h1 style="text-align:center;">아이디 찾기</h1>
    <br/>
    <p style="text-align:center; font-size: 20px;">아이디는 가입 시 입력하신 이메일을 통해 찾을 수 있습니다.</p>

<br/>
<br/>
    <input type="text" required style="display:block; margin:0 auto; width:400px; height:50px;" id="email"name="email" placeholder="  등록한 이메일을 입력해주세요."><br/><br/>
    <button type="submit"  id="memberPhoneBtn" class="memberPhoneBtn" style="display:inline-block; margin:0 auto; " value="아이디 찾기">아이디 찾기</button>
    <input type="button" class="memberPhoneBtn2" style="margin-bottom:10px;" value="취소" onClick="history.back()">
    </div>
    </form>

</body>
<script>

</script>
</html>
