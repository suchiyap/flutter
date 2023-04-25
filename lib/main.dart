import 'package:flutter/material.dart';
import 'package:temple_dev/routes.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Temple Demo',
      theme: theme(),
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.router.routeInformationParser,
      routerDelegate: _appRouter.router.routerDelegate,
    );
  }
}
