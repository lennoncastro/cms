import 'package:cms/src/configs/src.dart';
import 'package:cms/src/src.dart';
import 'package:cms_configs/src/src.dart';
import 'package:cms_network/src/src.dart';
import 'package:flutter/material.dart';

import 'src/di.dart';

void main() {
  setUpApp();
  runApp(const App());
}

void setUpApp() {
  DIImpl()
    ..registerFactory<HttpClient>(
      HttpClientImpl()..options.baseUrl = Environment.development.baseUrl,
    );
}
