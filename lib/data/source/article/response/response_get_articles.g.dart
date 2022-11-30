// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_articles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseGetArticles _$ResponseGetArticlesFromJson(Map<String, dynamic> json) =>
    ResponseGetArticles(
      articles: (json['articles'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResponseGetArticlesToJson(
        ResponseGetArticles instance) =>
    <String, dynamic>{
      'articles': instance.articles,
    };
