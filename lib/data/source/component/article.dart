import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

@JsonSerializable()
class Article {
  String id;
  String title;
  String summary;
  String content;
  DateTime created;

  Article({
    required this.id,
    required this.title,
    required this.summary,
    required this.content,
    required this.created,
  });

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
  Map<String, dynamic> toJson() => _$ArticleToJson(this);
}