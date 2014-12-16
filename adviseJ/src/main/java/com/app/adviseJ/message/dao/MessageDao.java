package com.app.adviseJ.message.dao;

import java.util.ArrayList;

import com.app.adviseJ.message.model.Message;

public interface MessageDao {
	void insertMessage(Message message);
	ArrayList<Message> getMessages();
}
