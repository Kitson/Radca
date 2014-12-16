package com.app.adviseJ.message.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.app.adviseJ.message.model.Message;
import com.app.adviseJ.users.model.User;

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
	public ArrayList<Message> getMessages(){
		ArrayList <Message> messageList;
		Session session = sessionFactory.openSession();
        session.beginTransaction();
        messageList = (ArrayList<Message>) session.createCriteria(Message.class).list();
        session.getTransaction().commit();
        session.close();
        for(Message message:messageList)
        {
        	System.out.println(message.getAuthor());
        }
        return messageList;
	}

}

