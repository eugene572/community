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
  width: 300px;
  height: 32px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  background-color: rgb(233, 233, 233);
}

textarea {
  width: 300px;
  height: 300px;
  font-size: 15px;
  border: 0;
  border-radius: 15px;
  outline: none;
  padding-left: 10px;
  padding-top:10px;
  background-color: rgb(233, 233, 233);
}
button {
    padding-left: 10px;
    padding-top:10px;
}
table {
    border-collapse: separate;
    border-spacing:30px 10px;
  }

</style>
<body>
<%
    String test = request.getParameter("test");
    if(test==null) { test = ""; }
%>

    <form action="messageSave">
   <button type="submit" value="test" style="float:right;" formaction = "messageForm"/>받은 쪽지함</button>
   <button type="submit" value="test" style="float:right;" formaction = "messageForm2"/>보낸 쪽지함</button>

    <table style="margin:auto;" class="a">
    <tr>
        <td><label for="name">보내는 사람</label></td>
        <td><input type="text" required id="name" placeholder="보내는사람 이름" name="sendName" value="${principal.user.username }"/></td>
    </tr>
    <tr>
    <td>
        <label for="email">받는 사람 </label></td>
        <td><input type="text" id="email" placeholder="받는 사람" name="receiveEmail" value="<%=test %>"/>
    </td>
    </tr>
    <tr>
        <td class="space" colspan="10"></td>
    </tr>
    <tr>
        <td style="vertical-align : top;"><label for="message">메시지  </label></td>
        <td><textarea id="message" rows="6" name="message"></textarea></td>
    </tr>
    </table>
           <button type="submit" class="btn btn-dark" value="send message"/>전송</button>

   </form>
</body>

</body>
</html>