import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class PasswordTop extends StatefulWidget implements PreferredSizeWidget {
  const PasswordTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<PasswordTop> createState() => _PasswordTopState();

  @override
  final Size preferredSize;
}

class _PasswordTopState extends State<PasswordTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '修改密码',
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
