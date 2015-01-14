package com.app.adviseJ.article.dao;

import java.util.List;

import com.app.adviseJ.article.model.Article;

public interface ArticleDao {
  void insertArticle(Article article);
  void updateArticle(Article article);
  List<Article >getArticles();
}
