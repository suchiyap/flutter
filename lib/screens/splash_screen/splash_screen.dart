import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:temple_dev/constants.dart';
import 'package:temple_dev/screens/main/main.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/";

  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List countries = [];
  bool countrySelected = false;
  bool isLoading = true;
  String deepLink = '';

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      // Navigate to your app's home page after 3 seconds
      context.pushReplacementNamed(MainScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    return Container(
        decoration: const BoxDecoration(color: kPrimaryBackgroundColor),
        child: Container(
          decoration: const BoxDecoration(gradient: kBackgroundGradientColor),
          child: Center(
            child: Image.asset('assets/images/csy.png'),
          ),
        ));
  }
}
