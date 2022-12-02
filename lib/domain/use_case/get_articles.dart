import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/repository/article_repository.dart';

class GetArticles {
  final ArticleRepository _articleRepository;

  GetArticles(this._articleRepository);

  Future<List<Article>> call({required int offset, required int count}) async {
    return await _articleRepository.getArticles(offset, count);
  }
}