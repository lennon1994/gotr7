package com.gotr.kill.mapper;

import org.apache.ibatis.annotations.Param;

import com.gotr.kill.pojo.SuccessKilled;



public interface SuccessKilledDao {
	/**
	 * 
	 * @param seckillId
	 * @param userPhone
	 * @return 插入行数
	 */
	int insertSuccessKilled(@Param("seckillId") String seckillId,
			@Param("userPhone") long userPhone);

	/**
	 * 查询successSeckill 带有seckill
	 * 
	 * @param seckillId
	 * @return
	 */
	SuccessKilled queryByIdWithSeckill(@Param("seckillId") String seckillId,
			@Param("userPhone") long userPhone);

}
