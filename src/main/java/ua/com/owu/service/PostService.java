package ua.com.owu.service;

import ua.com.owu.entity.Post;

import java.util.List;

/**
 * Created by Illko on 12.06.2017.
 */
public interface PostService {

    void save(String postTitle, String postText);

    void save (Post post);

    Post findOne(int id);

    List<Post> findAll();

    Post findOneWithBlog(int id);
}
