package com.gotr.trip.mapper;

import com.gotr.trip.pojo.UserInfo;

/**
 * Created by CGB-yz on 2017/4/22.
 */
public interface UserInfoMapper {

    /**
     * 新增用户详细信息
     * @param userInfo 要新增的用户的详细信息对象
     */
    public void saveUserInfo(UserInfo userInfo);

}
