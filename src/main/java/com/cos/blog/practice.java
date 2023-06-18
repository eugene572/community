package com.cos.blog;

import com.mysql.cj.protocol.Resultset;

import java.sql.*;

public class practice {

    public static void main(String[] args) {
        Connection conn = null;
        String dbURL = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
        PreparedStatement pstmt;
        ResultSet rs;

        String dbID = "root";
        String dbPassword = "1234";
        try {
            //드라이버 로딩
            Class.forName("com.mysql.cj.jdbc.Driver");

            //Connection생성
            conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
        }catch (Exception e){
            e.printStackTrace();
        }

        //데이터를 INSERT
        String SQL = "INSERT INTO web_message(sendName, receiveEmail, message, m_date) VALUES (?, ?, ?, sysdate())";
        try {
            pstmt = conn.prepareStatement(SQL);
            pstmt.setString(1, "hihi");
            pstmt.setString(2, "1111");
            pstmt.setString(3, "1111");

            pstmt.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
