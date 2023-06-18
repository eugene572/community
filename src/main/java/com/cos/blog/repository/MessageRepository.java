package com.cos.blog.repository;

import com.cos.blog.model.Message;
import com.cos.blog.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MessageRepository extends JpaRepository<Message, Integer> {
    List<Message> findAllByReceiver(User user);
    List<Message> findAllBySender(User user);
}
