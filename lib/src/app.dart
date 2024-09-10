import 'package:cms/src/routes.dart';
import 'package:flutter/material.dart';

const String appName = 'Flutter CMS';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: appName,
      routerConfig: Routes.routes,
    );
  }
}
