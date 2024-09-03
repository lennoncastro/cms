import 'package:cms_configs/src/extensions/generics.dart';
import 'package:get_it/get_it.dart';

abstract class DI {
  T call<T extends Object>({String? instanceName});

  void registerFactory<T extends Object>(T instance, {String? instanceName});

  void registerSingleton<T extends Object>(T instance, {String? instanceName});

  bool has<T extends Object>({String? instanceName});
}

typedef LocatorModule = Function(DI di);

class DIImpl implements DI {
  static final _locator = GetIt.instance;

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

class Locator {
  Locator._();

  factory Locator() {
    if (_instance == null) {
      _instance = Locator._();
    }
    return _instance!;
  }

  static Locator? _instance;

  static DI _di = DIImpl();

  static T inject<T extends Object>({String? instanceName}) {
    return _di<T>(instanceName: instanceName);
  }

  static void registerFactory<T extends Object>(
    T instance, {
    String? instanceName,
  }) {
    _di.registerFactory<T>(instance);
  }

  static bool has<T extends Object>({String? instanceName}) {
    return _di.has<T>(instanceName: instanceName);
  }

  static void registerSingleton<T extends Object>(
    T instance, {
    String? instanceName,
  }) {
    _di.registerSingleton(instanceName: instanceName, () => instance);
  }

  static void addModule(LocatorModule module) {
    _di.within(module);
  }
}
