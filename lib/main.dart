import 'dart:async';

import 'package:cms/src/src.dart';
import 'package:cms_core/src/src.dart';
import 'package:flutter/material.dart';

import 'src/pages/posts/posts.module.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError = (FlutterErrorDetails details) {
      catchUnhandledExceptions(details.exception, details.stack);
    };
    runApp(const App());
  }, catchUnhandledExceptions);
}

void catchUnhandledExceptions(Object error, StackTrace? stack) {
  debugPrintStack(stackTrace: stack, label: error.toString());
}

void setUpAppDependencies() {
  Locator.addModule(postsModule);
}
