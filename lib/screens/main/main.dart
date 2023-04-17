import 'package:flutter/material.dart';
import 'package:temple_dev/components/nav_bar.dart';
import 'package:temple_dev/screens/home/home_screen.dart';

class MainScreen extends StatefulWidget {
  static String routeName = "/main";
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyHomePage(title: '海南会東禪寺'),
      bottomNavigationBar: NavBar(),
    );
  }
}
