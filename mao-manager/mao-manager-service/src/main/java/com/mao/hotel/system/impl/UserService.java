package com.mao.hotel.system.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mao.hotel.system.IUserService;
import com.mao.hotel.system.User;
import com.mao.hotel.system.UserMapper;

@Service
public class UserService implements IUserService {

	@Autowired
	private UserMapper userMapper;
	
	@Override
	public User selectByPrimaryKey(Integer id) {
		
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<User> selectAll() {
		
		return userMapper.selectAll();
	}

	public void save(User user) {
		userMapper.insert(user);
		
	}

	@Override
	public void delete(Integer id) {
		userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void update(User user) {
		userMapper.updateByPrimaryKey(user);
	}

}
