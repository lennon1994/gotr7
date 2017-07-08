package com.gotr.trip.mapper;


import org.apache.ibatis.annotations.Param;

import com.gotr.trip.pojo.User;

import java.util.List;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public interface UserMapper {
    /**
     * 注册用户
     * @param user 要新增的用户对象
     */
    public void saveUser(User user);


    /**
     * 根据用户名和密码查询用户（登录）
     * @param username 用户输入的用户名
     * @param password 用户输入的密码
     * @return 返回用户对象
     */
    public User findUserByU_P(@Param("username") String username, @Param("password") String password);

    /**
     * 根据用户ID查询用户信息
     * @param userId 用户ID
     * @return 返回用户对象
     */
    public User findOne(String userId);

    /**
     * 根据输入的用户名查询用户信息
     * @param username 用户名
     * @return 用户对象
     */
    public User findUserByUsername(String username);

    public List<User> findAll();


}
