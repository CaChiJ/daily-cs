// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_get_article_today.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ResponseGetArticleToday _$ResponseGetArticleTodayFromJson(
        Map<String, dynamic> json) =>
    ResponseGetArticleToday(
      article: json['article'] == null
          ? null
          : Article.fromJson(json['article'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResponseGetArticleTodayToJson(
        ResponseGetArticleToday instance) =>
    <String, dynamic>{
      'article': instance.article,
    };
