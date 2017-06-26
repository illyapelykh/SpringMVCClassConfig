package ua.com.owu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import ua.com.owu.entity.Post;

/**
 * Created by Illko on 12.06.2017.
 */
public interface PostDAO extends JpaRepository<Post, Integer> {

    @Query("from Post p join fetch p.blog where p.id=:id")
    Post findOneWithBlog(@Param("id") int id);
}
