import 'package:json_annotation/json_annotation.dart';

import 'package:dailycs/data/source/component/article.dart';

part 'response_get_articles.g.dart';

@JsonSerializable()
class ResponseGetArticles {
  final List<Article> articles;

  ResponseGetArticles({required this.articles});

  factory ResponseGetArticles.fromJson(Map<String, dynamic> json) => _$ResponseGetArticlesFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseGetArticlesToJson(this);
}
