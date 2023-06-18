package com.cos.blog;

import com.cos.blog.dto.WebMessageDTO;

import java.sql.*;

public class WebMessageDAO {
    // DB 연결 담당 메소드
    public Connection conn() {
        Connection conn = null;
        PreparedStatement pstmt;
        ResultSet rs;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/mydb3?serverTimezone=Asia/Seoul&useSSL=false&useUnicode=true&characterEncoding=utf8";
            String user = "root";
            String pwd = "1234";

            conn = DriverManager.getConnection(url, user, pwd);
            if(conn != null) {
                System.out.println("연결 성공");
            }
        } catch(Exception e) {
            System.out.println("연결 오류 발생!");
            e.printStackTrace();
        }
        return conn;
    }

    public int insertMessage(WebMessageDTO dto) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        int cnt = 0;
        try{
            conn = conn();
            String sql = "insert into web_message(sendName, receiveEmail, message, m_date) values(?, ?, ?, sysdate())";
            pstmt = conn.prepareStatement(sql);
            
            pstmt.setString(1, dto.getSendName());
            pstmt.setString(2, dto.getReceiveEmail());
            pstmt.setString(3, dto.getMessage());
            
            pstmt.executeUpdate();

        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            try{
                if(conn != null)
                    conn.close();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return cnt;
    }
}
