package com.app.adviseJ.users.dao;

import java.util.List;
import java.util.Set;

import com.app.adviseJ.users.model.User;
import com.app.adviseJ.users.model.UserRole;

public interface UserDao {
 
	User findByUserName(String username);
	void insertUser(User user);
	void insertRole(UserRole userRole);
	void updateUser(User user);
	boolean userAvailable(String username);
	Set<UserRole> getRole(User user);
	List<User> getUsers();
}
