import 'package:flutter/material.dart';
import 'package:temple_dev/constants.dart';
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
    Future<bool> showCloseAppDialog() async {
      return await showDialog(
        context: context,
        barrierDismissible: true, // user must tap button
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: kPrimaryBackgroundColor,
            // title: const Text('Close APP'),
            content: const Text('Are you sure you want to close application?', style: TextStyle(fontSize: 14)),
            actions: <Widget>[
              TextButton(
                child: const Text('No', style: TextStyle(color: kSubTextColor)),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );
    }
    return WillPopScope(
      onWillPop: showCloseAppDialog,
      child: const Scaffold(
        body: MyHomePage(title: '海南会東禪寺'),
        bottomNavigationBar: NavBar(),
      ),
    );
  }
}
