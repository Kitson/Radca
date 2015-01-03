package com.app.adviseJ.message.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name = "messages", catalog = "radca_spring")
public class Message {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY) private int message_id;
	@Length (min = 5, max = 200, message = "Długość wiadomości musi mieścić się miedzy 5 a 20 znaków.")	private String message;
	@Length (min = 5, max = 100, message = "Ściezka musi mieścić się miedzy 5 a 100 znaków.") private String filePath;
	private String author;
	public Message()
	{
		
	}
	public Message(String message, String filePath,String author)
	{
		this.message = message;
		this.filePath = filePath;
		this.author = author;
	}
	@Column(name = "message", unique = false, 
			nullable = false, length = 200)
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Column(name = "filePath", unique = true, 
			nullable = false, length = 100)
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	@Column(name = "author", unique = true, 
			nullable = false, length = 25)
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getMessage_Id() {
		return message_id;
	}
	public void setMessage_Id(int message_id) {
		this.message_id = message_id;
	}
}
