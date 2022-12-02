import 'package:flutter/cupertino.dart';

import 'package:dailycs/presentation/widget/atom/app_font_families.dart';
import 'package:flutter/material.dart';

class BlockTitle extends StatelessWidget {
  static const Color _titleColor = Color(0xFF040404);
  static const Color _subTitleColor = Color(0xFF9D9FAF);

  final String title;
  final String subTitle;
  final double width;

  const BlockTitle({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _title(title, width),
          _subTitle(subTitle, width),
        ],
      ),
    );
  }

  Widget _title(String title, width) {
    return Container(
      height: 24,
      width: width,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 19,
          fontFamily: AppFontFamilies.pretendard,
          fontWeight: FontWeight.w700,
          color: _titleColor,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  Widget _subTitle(String subTitle, width) {
    return SizedBox(
      height: 16,
      width: width,
      child: Text(
        subTitle,
        style: const TextStyle(
          fontSize: 13,
          fontFamily: AppFontFamilies.pretendard,
          fontWeight: FontWeight.w300,
          color: _subTitleColor,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
