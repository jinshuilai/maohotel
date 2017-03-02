package com.mao.hotel.system;

import java.util.List;

public interface IUserService {

	public User selectByPrimaryKey(Integer id);
	
	public List<User> selectAll();

	public void save(User user);

	public void delete(Integer id);

	public void update(User user);
}
