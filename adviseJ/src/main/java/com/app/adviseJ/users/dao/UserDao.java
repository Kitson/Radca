package com.app.adviseJ.users.dao;

import java.util.List;
import java.util.Set;

import com.app.adviseJ.users.model.User;
import com.app.adviseJ.users.model.UserRole;

public interface UserDao {
 
	User findByUserName(String username);
	void insertUser(User user);
	void updateUser(User user);
	void insertRole(UserRole userRole);
	void updateRole(UserRole userRole);
	boolean userAvailable(String username);
	UserRole getRole(User user);
	List<User> getUsers();
}
