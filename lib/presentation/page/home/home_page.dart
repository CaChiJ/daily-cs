import 'package:dailycs/domain/model/article.dart';
import 'package:dailycs/presentation/view_model/today_article_view_model.dart';
import 'package:dailycs/presentation/widget/atom/app_font_families.dart';
import 'package:dailycs/presentation/widget/molecule/article_card.dart';
import 'package:dailycs/presentation/widget/organism/simple_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:dailycs/presentation/widget/molecule/block_title.dart';
import 'package:dailycs/presentation/page/home/home_view_model.dart';

class HomePage extends StatefulWidget {
  static const _appBarTitleColor = Color(0xFF040404);

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: const SimpleAppBar(title: "Home"),
      backgroundColor: const Color(0xFFFCFCFC),
      body: Stack(
        children: [
          Positioned(
            child: _todayArticle(viewModel.todayArticleViewModel),
          ),
        ],
      ),
    );
  }

  Widget _todayArticle(TodayArticleViewModel viewModel) {
    Article? article = viewModel.todayArticle;

    if (viewModel.isLoading) {
      return Text("loading...");
    } else if (article == null) {
      return Text("오늘은 준비된 글이 없어요 :(");
    }

    return Container(
      height: 175,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BlockTitle(
            title: "☕️ 오늘의 글",
            subTitle: "매일 새롭게 전해드려요",
            width: MediaQuery.of(context).size.width - 40,
          ),
          ArticleCard(
            articleTitle: article.title,
            articleSummary: article.summary,
            width: MediaQuery.of(context).size.width - 30,
            height: 130,
          ),
        ],
      ),
    );
  }
}
