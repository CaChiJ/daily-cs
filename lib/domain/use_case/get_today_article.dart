import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/repository/article_repository.dart';

class GetTodayArticle {
  final ArticleRepository _articleRepository;

  GetTodayArticle(this._articleRepository);

  Future<Article?> call() async {
    return await _articleRepository.getArticleToday();
  }
}