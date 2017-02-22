package com.mao.hotel.system;

public interface UserMapper {

	public User selectByPrimaryKey(Integer id);
	
	public void deleteByPrimaryKey(Integer id);
	
	public void insert(User user);
	
	public void insertSelective(User user);
	
	public void updateByPrimaryKeySelective(User user);
	
	public void updateByPrimaryKey(User user);
}
