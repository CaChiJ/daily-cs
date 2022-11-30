import 'package:dailycs/domain/repository/article_repository.dart';
import 'package:dailycs/domain/use_case/get_articles.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier {
  final GetArticles getArticles;

  HomeViewModel(this.getArticles);
}