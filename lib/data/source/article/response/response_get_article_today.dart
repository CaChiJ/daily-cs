import 'package:json_annotation/json_annotation.dart';

import 'package:dailycs/data/source/component/article.dart';

part 'response_get_article_today.g.dart';

@JsonSerializable()
class ResponseGetArticleToday {
  final Article? article;

  ResponseGetArticleToday({required this.article});

  factory ResponseGetArticleToday.fromJson(Map<String, dynamic> json) => _$ResponseGetArticleTodayFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseGetArticleTodayToJson(this);
}