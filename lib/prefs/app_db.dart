import 'package:fitnestx/common/shared_preference_key.dart';
import 'package:hive/hive.dart';

import '../locators.dart';

class AppDB {
  static const _appDbBox = '_appDbBox';
  final Box<dynamic> _box;
  AppDB._(this._box);

  static Future<AppDB> getInstance() async {
    final box = await Hive.openBox<dynamic>(_appDbBox);
    return AppDB._(box);
  }

  T getValue<T>(dynamic key, {T? defaultValue}) =>
      _box.get(key, defaultValue: defaultValue) as T;

  Future<void> setValue<T>(dynamic key, T value) => _box.put(key, value);

  /// Is Login
  bool get isLogin => getValue(SharedPreferenceKey.isLogin, defaultValue: false);
  set isLogin(bool update) => setValue(SharedPreferenceKey.isLogin, update);

  /// Is Started
  bool get isStarted => getValue(SharedPreferenceKey.isStarted, defaultValue: false);
  set isStarted(bool update) => setValue(SharedPreferenceKey.isStarted, update);

  /// Is On-Boarding
  bool get isOnBoarding => getValue(SharedPreferenceKey.isOnBoarding, defaultValue: false);
  set isOnBoarding(bool update) => setValue(SharedPreferenceKey.isOnBoarding, update);

}

final appDB = locator<AppDB>();
