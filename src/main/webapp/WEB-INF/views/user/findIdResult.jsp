<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>
<%!
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String url = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
	String uid = "root";
	String pass = "1234";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<%
        try{

            String email = request.getParameter("email");
            String id;

            String sql = "select * from user where email ='"+email+"'";
            Class.forName("com.mysql.cj.jdbc.Driver");

            conn = DriverManager.getConnection(url, uid, pass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            %>
            <div class="container">
                <div>
                <h4 style="text-align:center;">회원님의 아이디는</h4>
                <p style="text-align:center; font-size: 20px;">
                <%
                if(rs.next()){ %> [ <%
                out.println(rs.getString("username"));
                %> ] </p>
                <h4 style="text-align:center;"> 입니다</h4>
                <br/>
                <input type="button" class="memberPhoneBtn" style="display:block; margin:0 auto;" value="로그인" onClick="location.href='/auth/loginForm'">
                </div>
            </div>
<% }else{ %>
            <div class="container">
                <div>
                <h4 style="text-align:center;">등록된 정보가 없습니다.</h4>
                <br/>
                <br/>
                <input type="button" class="memberPhoneBtn" style="display:block; margin:0 auto;" value="뒤로 가기" onClick="location.href='/auth/findName'">
                </div>
            </div>
<%
}
        }catch(Exception ex){
            out.println(ex.getMessage());
        } finally{
        try {
            if (rs != null)
                rs.close();
            if (stmt != null)
                stmt.close();
            if (conn != null)
                conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
<body>
</html>