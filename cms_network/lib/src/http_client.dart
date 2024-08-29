import 'package:dio/dio.dart';

abstract class HttpClient {}

class HttpClientImpl extends DioMixin implements HttpClient {}
