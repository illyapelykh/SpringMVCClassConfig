package ua.com.owu.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.com.owu.entity.User;

/**
 * Created by Illko on 23.06.2017.
 */
public interface UserDAO extends JpaRepository<User, Integer> {

    User findUserByUsername(String username);
}
