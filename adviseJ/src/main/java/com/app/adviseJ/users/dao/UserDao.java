package com.app.adviseJ.users.dao;

import com.app.adviseJ.users.model.User;

public interface UserDao {
 
	User findByUserName(String username);
	void insertUser(User user);
}
