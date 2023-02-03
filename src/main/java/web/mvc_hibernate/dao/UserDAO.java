package web.mvc_hibernate.dao;

import web.mvc_hibernate.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface UserDAO {
    public List<User> getAllUsers();

    public void saveUser(User user);

    public User getUser(int id);

    public void deleteUser(int id);
}
