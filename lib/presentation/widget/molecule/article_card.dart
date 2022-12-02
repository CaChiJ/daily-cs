import 'package:dailycs/presentation/widget/atom/app_font_families.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatefulWidget {
  static const Color _shadowColor = Color(0x29B5B5B5);

  final String articleTitle;
  final String articleSummary;
  final double width;
  final double height;

  const ArticleCard({
    Key? key,
    required this.articleTitle,
    required this.articleSummary,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  State<ArticleCard> createState() => _ArticleCardState();
}

class _ArticleCardState extends State<ArticleCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: ArticleCard._shadowColor,
            spreadRadius: 5,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _articleTitle(widget.articleTitle),
          SizedBox(height: 10),
          _articleSummary(widget.articleSummary),
        ],
      ),
    );
  }

  Widget _articleTitle(title) {
    return Container(
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontFamily: AppFontFamilies.pretendard,
          fontWeight: FontWeight.w600,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _articleSummary(summary) {
    return Text(
      summary,
      style: const TextStyle(
        fontSize: 13,
        fontFamily: AppFontFamilies.pretendard,
        fontWeight: FontWeight.w400,
      ),
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
    );
  }
}
