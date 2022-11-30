import 'package:dailycs/domain/model/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> getArticles(int offset, int count);
}