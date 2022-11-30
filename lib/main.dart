import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dailycs/presentation/page/home/home_page.dart';
import 'package:dailycs/presentation/page/home/home_view_model.dart';
import 'package:dailycs/domain/use_case/get_articles.dart';

import 'data/repository_impl/article_repository_impl.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeViewModel(GetArticles(ArticleRepositoryImpl())),
      child: const HomePage()
    ),
  );
}