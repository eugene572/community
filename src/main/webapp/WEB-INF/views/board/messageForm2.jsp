<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/js/email.css">
<title>Insert title here</title>
</head>
<body>

<p style="text-align:center; font-size: 20px; font-weight: bold;">${principal.user.username} 님의 받은쪽지함</p>
<br/>
<div class="container">

    <div class="card m-2">
    <div class="card-body">
    <table class="table">

    <thead class="thead-dark">
        <tr>
            <th width="50%" style="text-align:center;">내용</th>
            <th width="25%" style="text-align:center;">보낸 사람</th>
            <th width="25%" style="text-align:center;">날짜</th>
        </tr>
    </thead>
    <tbody>
<%
			try {

			    String sendName = request.getParameter("sendName");
                String receiveEmail = request.getParameter("receiveEmail");
                String message = request.getParameter("message");

			    String sql = " select sendName, receiveEmail, message, m_date from web_message where receiveEmail = " + "'"  + sendName + "'";
				Class.forName("com.mysql.cj.jdbc.Driver");

				conn = DriverManager.getConnection(url, uid, pass);
				stmt = conn.createStatement();
				rs = stmt.executeQuery(sql);

				while (rs.next()) {
					out.println("<tr>");

					out.println("<td>" + rs.getString("message") + "</td>");

					out.println("<td ");
					out.println(" style=\"text-align:center;\">");
					out.println(" <a style=\"color: black; text-decoration: none;\" href=\"/board/messageMain\">");
					%>

                    <form action="messageMain">
					<button type="submit" value="test"/ style="border:none; background-color:transparent;">
                    <img height="15px" src="/image/black-back-closed-envelope-shape.png" alt="">
                    </button>
                    <input type="hidden" name="test" value = " <% out.println(rs.getString("sendName")); %> "/>
                    </form>

                    <%
					out.println(rs.getString("sendName") + "</td>");

                    out.println("<td");
                    out.println(" style=\"text-align:center;\">");
                    out.println(rs.getString("m_date") + "</td>");

					out.println("</tr>");
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
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
    </tbody>
	</table>
	</div>
	</div>
</div>
</body>
</html>