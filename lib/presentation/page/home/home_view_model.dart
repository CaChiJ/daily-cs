import 'package:flutter/cupertino.dart';

import 'package:dailycs/domain/use_case/get_articles.dart';
import 'package:dailycs/presentation/view_model/today_article_view_model.dart';

class HomeViewModel extends ChangeNotifier {
  TodayArticleViewModel get todayArticleViewModel => _todayArticleViewModel;

  final GetArticles _getArticles;

  final TodayArticleViewModel _todayArticleViewModel;

  HomeViewModel(this._getArticles, this._todayArticleViewModel);
}