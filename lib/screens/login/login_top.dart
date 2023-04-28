import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class LogInTop extends StatefulWidget implements PreferredSizeWidget {
  const LogInTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<LogInTop> createState() => _LogInTopState();

  @override
  final Size preferredSize;
}

class _LogInTopState extends State<LogInTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: kButtonTextColor,
      ),
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '登入',
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
