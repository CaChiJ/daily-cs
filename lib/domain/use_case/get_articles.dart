import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/repository/article_repository.dart';

class GetArticles {
  final ArticleRepository articleRepository;

  GetArticles(this.articleRepository);

  Future<List<Article>> call({required int offset, required int count}) async {
    return await articleRepository.getArticles(offset, count);
  }
}