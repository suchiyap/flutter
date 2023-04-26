import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';

class ProfileTop extends StatefulWidget implements PreferredSizeWidget {
  const ProfileTop({
    Key? key,
    this.preferredSize = const Size.fromHeight(50),
  }) : super(key: key);

  @override
  State<ProfileTop> createState() => _ProfileTopState();

  @override
  final Size preferredSize;
}

class _ProfileTopState extends State<ProfileTop> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: kButtonTextColor,
      ),
      toolbarHeight: 45,
      backgroundColor: kPrimaryColor,
      title: const Text(
        '修改个人资料',
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
