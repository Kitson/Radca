package com.app.adviseJ.message.dao;

import java.util.List;

import com.app.adviseJ.message.model.Message;

public interface MessageDao {
	void insertMessage(Message message);
	List<Message> getMessages();
}
