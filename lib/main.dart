import 'package:dailycs/domain/use_case/get_today_article.dart';
import 'package:dailycs/presentation/view_model/today_article_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dailycs/presentation/page/home/home_page.dart';
import 'package:dailycs/presentation/page/home/home_view_model.dart';
import 'package:dailycs/domain/use_case/get_articles.dart';

import 'data/repository_impl/article_repository_impl.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(
        GetArticles(ArticleRepositoryImpl()),
        TodayArticleViewModel(GetTodayArticle(ArticleRepositoryImpl())),
      ),
      child: const MaterialApp(home: HomePage())
    ),
  );
}