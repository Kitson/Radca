package com.app.adviseJ.article.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.app.adviseJ.article.model.Article;

public class ArticleDaoImpl implements ArticleDao {
	
	@Autowired
	public SessionFactory sessionFactory;
	@Override
	public void insertArticle(Article article) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(article);
		session.getTransaction().commit();
		session.close();

	}

	@Override
	public void updateArticle(Article article) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(article);
		session.getTransaction().commit();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Article> getArticles() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		return session.createCriteria(Article.class).list();
	}

}
