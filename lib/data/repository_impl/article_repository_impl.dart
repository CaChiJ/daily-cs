import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/repository/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  @override
  Future<List<Article>> getArticles(int offset, int count) async {
    return Future.value([]);
  }
}