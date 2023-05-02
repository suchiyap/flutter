import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class ForgotPasswordTop extends StatefulWidget implements PreferredSizeWidget {
  const ForgotPasswordTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<ForgotPasswordTop> createState() => _ForgotPasswordTopState();

  @override
  final Size preferredSize;
}

class _ForgotPasswordTopState extends State<ForgotPasswordTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: kButtonTextColor,
      ),
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '忘记密码',
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
