package com.neuedu.service;

import com.neuedu.dao.UserDao;
import com.neuedu.pojo.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.lang.management.MemoryUsage;
import java.util.List;

/**
 * Created by 86178 on 2019/3/23.
 */
@Service
public class UserServiceImpl implements UserService {
   @Resource
    UserDao userDao;

    @Override
    public User login(User user) {
        return userDao.login(user);
    }

    @Override
    public List<User> list(User user) {
        return userDao.list(user);
    }

    @Override
    public int add(User user) {
        return userDao.add(user);
    }

    @Override
    public int delete(int id) {
        return userDao.delete(id);
    }

    @Override
    public int reback(int id) {
        return userDao.reback(id);
    }

    @Override
    public int update(User user) {
        return userDao.update(user);
    }

    @Override
    public User getUserById(int id) {
        return userDao.getUserById(id);
    }

    @Override
    public int batch(List<User> users) {
        return userDao.batch(users);
    }
}
