import 'package:dailycs/presentation/widget/atom/app_font_families.dart';
import 'package:flutter/material.dart';

class SimpleAppBar extends StatefulWidget implements PreferredSizeWidget {
  static const titleDefaultTextColor = Color(0xFF040404);
  static const appBarDividerColor = Color(0xFFE3E3E3);

  final String title;
  final double dividerHeight;
  final Color backgroundColor;
  final Color titleTextColor;

  const SimpleAppBar({
    Key? key,
    required this.title,
    this.backgroundColor = Colors.white,
    this.titleTextColor = titleDefaultTextColor,
    this.dividerHeight = 1.5,
  }) : super(key: key);

  @override
  State<SimpleAppBar> createState() => _SimpleAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SimpleAppBarState extends State<SimpleAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(widget.dividerHeight),
        child: Container(
          color: SimpleAppBar.appBarDividerColor,
          height: widget.dividerHeight,
        ),
      ),
      elevation: 0,
      title: Text(widget.title),
      centerTitle: false,
      titleTextStyle: TextStyle(
        color: widget.titleTextColor,
        fontFamily: AppFontFamilies.pretendard,
        fontSize: 19,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
