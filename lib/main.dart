import 'dart:async';

import 'package:cms/src/src.dart';
import 'package:cms_core/src/src.dart';
import 'package:flutter/material.dart';

import 'src/pages/posts/posts.module.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() {
    setUpAppDependencies();
    runApp(const App());
  }, (error, stackTrace) {
    //TODO: add error logger
  });
}

void setUpAppDependencies() {
  Locator.addModule(postsModule);
}
