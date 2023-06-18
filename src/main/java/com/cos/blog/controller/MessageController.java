package com.cos.blog.controller;

import com.cos.blog.dto.MessageDto;
import com.cos.blog.dto.WebMessageDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;

@Controller
public class MessageController {

    public String message(HttpServletRequest request, Model model) {
        WebMessageDTO message = new WebMessageDTO();

        message.setSendName(request.getParameter("sendName"));
        message.setReceiveEmail(request.getParameter("receiveEmail"));
        message.setMessage(request.getParameter("message"));

        model.addAttribute("message", message);

        return "board/messageMain";
    }
}
