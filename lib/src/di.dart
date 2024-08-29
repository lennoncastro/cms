import 'package:get_it/get_it.dart';

abstract class DI {
  T call<T extends Object>({String? instanceName});

  void registerFactory<T extends Object>(T instance, {String? instanceName});

  void registerSingleton<T extends Object>(T instance, {String? instanceName});

  bool has<T extends Object>({String? instanceName});
}

class DIImpl implements DI {
  final _locator = GetIt.instance;

  @override
  T call<T extends Object>({String? instanceName}) {
    return _locator<T>(instanceName: instanceName);
  }

  @override
  void registerFactory<T extends Object>(
    T instance, {
    String? instanceName,
  }) {
    _locator.registerFactory(() => instance);
  }

  @override
  bool has<T extends Object>({String? instanceName}) {
    return _locator.isRegistered<T>(instanceName: instanceName);
  }

  @override
  void registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
  }) {
    _locator.registerSingleton(() => instance);
  }
}
