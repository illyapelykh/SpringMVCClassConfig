package ua.com.owu.service;

import ua.com.owu.entity.Blog;

/**
 * Created by Illko on 19.06.2017.
 */
public interface MailService {

    void sendMail(String email, Blog blog);
}
