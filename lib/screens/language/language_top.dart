import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class LanguageTop extends StatefulWidget implements PreferredSizeWidget {
  const LanguageTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<LanguageTop> createState() => _LanguageTopState();

  @override
  final Size preferredSize;
}

class _LanguageTopState extends State<LanguageTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: kButtonTextColor,
      ),
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '语言更换',
        style: TextStyle(
          fontSize: 18,
          color: kRatingBarColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }
}
