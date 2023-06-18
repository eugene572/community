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
<title>Insert title here</title>
</head>
<body>
 <%--<table width='800' border='1'>
        <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>암호</th>--%>
<%
    request.setCharacterEncoding("UTF-8");

    Connection conn = null;
    PreparedStatement pstmt = null;

    String sendName = request.getParameter("sendName");
    String receiveEmail = request.getParameter("receiveEmail");
    String message = request.getParameter("message");

    Class.forName("com.mysql.cj.jdbc.Driver");


        String jdbcDriver = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
        String dbUser = "root";
        String dbPass = "1234";

        conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

        String SQL = "INSERT INTO web_message(sendName, receiveEmail, message, m_date) VALUES (?, ?, ?, sysdate())";

        pstmt = conn.prepareStatement(SQL);

        pstmt.setString(1, sendName);
        pstmt.setString(2, receiveEmail);
        pstmt.setString(3, message);

        System.out.println(pstmt + "<-- pstmt 2");

        out.println(sendName);

        pstmt.executeUpdate();

        pstmt.close();
        conn.close();
%>

<script>
alert("쪽지를 보냈습니다.");

location.href='messageMain';
</script>
</body>
</html>
