import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:temple_dev/routes.dart';
import 'package:temple_dev/size_config.dart';
import 'theme.dart';

void main() {
  usePathUrlStrategy();

  final runnableApp = _buildRunnableApp(
    isWeb: kIsWeb,
    app: MyApp(),
  );

  runApp(runnableApp);
}

Widget _buildRunnableApp({
  required bool isWeb,
  required Widget app,
}) {
  if (!isWeb) {
    return app;
  }

  return Center(
    child: ClipRect(
      child: SizedBox(
        width: kWebWidth,
        child: app,
      ),
    ),
  );
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
