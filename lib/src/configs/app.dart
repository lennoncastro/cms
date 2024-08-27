import 'package:flutter/material.dart';
import 'configs.dart';

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
