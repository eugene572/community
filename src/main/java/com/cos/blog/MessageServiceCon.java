package com.cos.blog;

import com.cos.blog.dto.WebMessageDTO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@RequestMapping(value="/board/MessageServiceCon", method = {RequestMethod.GET, RequestMethod.POST})
@WebServlet("/board/MessageServiceCon")
public class MessageServiceCon extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("EUC-KR");

        String sendName = request.getParameter("sendName");
        String receiveEmail = request.getParameter("receiveEmail");
        String message = request.getParameter("message");

        System.out.println(sendName);
        System.out.println(receiveEmail);
        System.out.println(message);

        WebMessageDTO dto = new WebMessageDTO();
        WebMessageDAO dao = new WebMessageDAO();

        int cnt = dao.insertMessage(dto);

        if(cnt > 0){
            System.out.println("메시지 전송 성공");
        }else {
            System.out.println("실패");
        }
        response.sendRedirect("index.jsp");
    }




}
