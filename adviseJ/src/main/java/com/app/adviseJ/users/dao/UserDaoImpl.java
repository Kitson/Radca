package com.app.adviseJ.users.dao;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.adviseJ.users.model.User;
import com.app.adviseJ.users.model.UserRole;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private org.hibernate.SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public List<User> getUsers()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		return session.createCriteria(User.class).list();
	}
	@SuppressWarnings("unchecked")
	public User findByUserName(String username) {

		List<User> users = new ArrayList<User>();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		users = session.createCriteria(User.class).add(Restrictions.eq("username", username)).list();
		session.getTransaction().commit();
		session.close();
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}

	@SuppressWarnings("unchecked")
	public boolean userAvailable(String username) {
		List<User> users = new ArrayList<User>();
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		users = session.createCriteria(User.class).add(Restrictions.like("username", username)).list();
		session.getTransaction().commit();
		session.close();
		if (users.size() > 0) {
			return true;	
		} else {
			return false;
		}
	}

	public void insertUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}
	
	public void updateUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(user);
		session.getTransaction().commit();
		session.close();
	}
	public void insertRole(UserRole userRole) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(userRole);
		session.getTransaction().commit();
		session.close();
	}
	@SuppressWarnings("unchecked")
	public Set<UserRole> getRole(User user) {
		Set<UserRole> userRoles;
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		userRoles = new HashSet<UserRole>(session.createCriteria(UserRole.class).createAlias("user", "user").add(Restrictions.eq("user", user)).list());
		session.getTransaction().commit();
		session.close();
		return userRoles;
	}

}
