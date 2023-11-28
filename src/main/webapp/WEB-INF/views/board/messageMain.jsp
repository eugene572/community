<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/js/email.css">

</head>
<style>
input {
  width: 500px;
  height: 50px;
  font-size: 20px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
}

textarea {
  width: 500px;
  height: 300px;
  font-size: 20px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  padding-top:10px;
  background-color: rgb(233, 233, 233);
}

table {
    border-collapse: separate;
    border-spacing:30px 10px;
  }

  .message{
            border: 0;
            outline: none;
            font-size: 15px;
            margin: 5px;
            background: black;
            color: white;

            cursor: pointer;
            border-radius: 10px;
            width:100px;

          }

</style>
<body>
<%
    String test = request.getParameter("test");
    if(test==null) { test = ""; }
%>

    <form action="messageSave">
    <div style="display:inline-block">
   <div style=""><button type="submit" value="test" class="message" style="  text-align:center; margin-left:1300px;" formaction = "messageForm"/>보낸 쪽지함</button></div>
  <div style=""><button type="submit" value="test" class="message" style=" text-align:center; margin-left:1300px;" formaction = "messageForm2"/>받은 쪽지함</button></div>
</div>
    <table style="margin:auto;" class="a">
    <tr>
        <td><label for="name" style="font-size: 20px;">보내는 사람</label></td>
        <td><input type="text"  required id="name" placeholder="보내는사람 이름" name="sendName" value="${principal.user.username }"/></td>
    </tr>
    <tr>
    <td>
        <label for="email" style="font-size: 20px;">받는 사람 </label></td>
        <td><input type="text" id="email" placeholder="받는 사람" name="receiveEmail" value="<%=test %>"/>
    </td>
    </tr>
    <tr>
        <td class="space" colspan="10"></td>
    </tr>
    <tr>
        <td style="vertical-align : top;"><label for="message" style="font-size: 20px;">메시지  </label></td>
        <td><textarea id="message"  rows="6" name="message"></textarea></td>
    </tr>
    </table>
           <button type="submit" style="margin-left:650px; font-size: 20px;" class="btn btn-dark" value="send message"/>전송</button>

   </form>
</body>

</body>
</html>