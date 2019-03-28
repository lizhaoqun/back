package com.neuedu.dao;

import com.neuedu.pojo.User;

import java.util.List;

/**
 * Created by 86178 on 2019/3/23.
 */
public interface UserDao {
    public  User login(User user);
    public List<User> list(User user);
    public int add(User user);
    public int delete(int id);
    public int reback(int id);
    public int update(User user);
    public User getUserById(int id);
    public int batch(List<User> users);

}
