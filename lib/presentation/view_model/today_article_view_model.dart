import 'package:flutter/cupertino.dart';

import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/use_case/get_today_article.dart';

class TodayArticleViewModel extends ChangeNotifier {
  final GetTodayArticle _getTodayArticle;

  bool get isLoading => _isLoading;

  Article? todayArticle;
  bool _isLoading = true;

  TodayArticleViewModel(this._getTodayArticle) {
    _load();
  }

  Future<void> _load() async {
    _isLoading = true;

    todayArticle = await _getTodayArticle();

    _isLoading = false;
    notifyListeners();
  }
}