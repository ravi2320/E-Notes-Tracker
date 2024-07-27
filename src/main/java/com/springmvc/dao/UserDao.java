package com.springmvc.dao;

import com.springmvc.entity.User;

public interface UserDao {

	public int saveUser(User user);
	
	public User login(String email, String password);
}
