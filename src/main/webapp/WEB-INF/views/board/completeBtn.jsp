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

<%
    String id = request.getParameter("testId");

    request.setCharacterEncoding("UTF-8");

    Connection conn = null;
    PreparedStatement pstmt = null;

    Class.forName("com.mysql.cj.jdbc.Driver");

    String jdbcDriver = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
    String dbUser = "root";
    String dbPass = "1234";

    conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);

    String SQL = "UPDATE BOARD SET COUNT = 1 WHERE id = ?";

    pstmt = conn.prepareStatement(SQL);

    pstmt.setString(1, id);

    pstmt.executeUpdate();
    pstmt.close();
    conn.close();
%>

<script>
alert("글을 완료처리 했습니다.");
window.close();
window.history.back();
</script>
</body>
</html>