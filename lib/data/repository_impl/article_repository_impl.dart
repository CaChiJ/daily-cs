import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/domain/repository/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  @override
  Future<List<Article>> getArticles(int offset, int count) async {
    return [];
  }

  @override
  Future<Article> getArticleToday() async {
    return Article(
      "test",
      "otf의 원리, otf의 원리otf의 원리otf의 원리otf의 원리otf의 원리otf의 원리",
      "그동안 사용해왔던 폰트, otf가 어떻게 동작하는지 알고 계신가요? otf 폰트를 구성하는 베이지안 곡선에 대해 알아보고 이를 계산하기 위한 알고리즘을 살펴봅시다!그동안 사용해왔던 폰트, otf가 어떻게 동작하는지 알고 계신가요? otf 폰트를 구성하는 베이지안 곡선에 대해 알아보고 이를 계산하기 위한 알고리즘을 살펴봅시다!",
      "컨텐트",
      DateTime(2022),
    );
  }
}
