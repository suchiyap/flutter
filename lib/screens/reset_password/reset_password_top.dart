import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class ResetPasswordTop extends StatefulWidget implements PreferredSizeWidget {
  const ResetPasswordTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<ResetPasswordTop> createState() => _ResetPasswordTopState();

  @override
  final Size preferredSize;
}

class _ResetPasswordTopState extends State<ResetPasswordTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: kButtonTextColor,
      ),
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '重设密码',
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
