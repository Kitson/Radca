package com.app.adviseJ.message.dao;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.adviseJ.message.model.Message;

@Repository
public class MessageDaoImpl implements MessageDao {

	@Autowired
	private org.hibernate.SessionFactory sessionFactory;
	
	public void insertMessage(Message message) {
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(message);
        session.getTransaction().commit();
        session.close();
	}
	public void deleteMessage(Message message){
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.delete(message);
        session.getTransaction().commit();
        session.close();
	}
	@SuppressWarnings("unchecked")
	public List<Message> getMessages(){
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        return session.createCriteria(Message.class).list();
	}

}

