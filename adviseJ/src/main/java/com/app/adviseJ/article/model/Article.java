package com.app.adviseJ.article.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Length;

@Entity
@Table(name ="articles", catalog ="radca_spring")
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int article_id;
	@Length(min = 5, max = 80, message = "Długość tytułu musi mieścić się miedzy 5 a 20 znaków.")
	private String title;
	private String author;
	@Length(min = 5, max = 500, message = "Długość artykułu musi mieścić się miedzy 5 a 20 znaków.")
	private String text;
	private String file_path = null;

	public Article() {

	}

	public Article(String title, String author, String text, String filepath) {
		this.title = title;
		this.author = author;
		this.text = text;
		this.file_path = filepath;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getArticle_id() {
		return article_id;
	}

	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}

	@Column(name = "article_title", unique = false, nullable = false, length = 45)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "article_author", unique = false, nullable = false, length = 25)
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Column(name = "article_text", unique = false, nullable = false, length = 500)
	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Column(name = "article_file_path", unique = false, nullable = true, length = 256)
	public String getFile_path() {
		return file_path;
	}

	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
}
