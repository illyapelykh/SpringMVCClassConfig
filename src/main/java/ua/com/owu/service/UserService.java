package ua.com.owu.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import ua.com.owu.entity.User;

/**
 * Created by Illko on 23.06.2017.
 */
public interface UserService extends UserDetailsService {

    void save(User user);

    User findUserByUsername(String username);


}
