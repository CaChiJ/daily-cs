import 'package:dailycs/data/source/article/response/response_get_articles.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import 'package:dailycs/domain/model/article.dart';

part 'article_client.g.dart';

@RestApi(baseUrl: "")
abstract class ArticleClient {
  factory ArticleClient(Dio dio, {String baseUrl}) = _ArticleClient;

  @GET("/articles")
  Future<ResponseGetArticles> getArticles(int offset, int count);
}