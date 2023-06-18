package com.cos.blog.service;

import com.cos.blog.model.Board;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class messageService {

//    @Transactional(readOnly = true)
//    public Message 글상세보기(int id) {
//        return messageRepository.findById(id)
//                .orElseThrow(()->{
//                    return new IllegalArgumentException("글 상세보기 실패 : 아이디를 찾을 수 없습니다.");
//                });
//    }
}
