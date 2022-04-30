/// Created by HrAnT

import 'package:flutter_test_group_2/core/shared_preferences/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static  SharedPreferences? _sharedPrefs;

  getInstance() async {
    _sharedPrefs ??= await SharedPreferences.getInstance();
  }

  /// store user login value
  String? get userLogin =>
      _sharedPrefs?.getString(SharedPreferencesKeys.userLogin);

  set userLogin(String? newValue) {
    _sharedPrefs?.setString(SharedPreferencesKeys.userLogin, newValue!);
  }

  void removeUserLogin() {
    if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userLogin) ?? false) {
      _sharedPrefs?.remove(SharedPreferencesKeys.userLogin);
    }
  }

  /// store user password value
  String? get userPassword =>
      _sharedPrefs?.getString(SharedPreferencesKeys.userPassword);

  set userPassword(String? newValue) {
    _sharedPrefs?.setString(SharedPreferencesKeys.userPassword, newValue!);
  }

  void removeUserPassword() {
    if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userPassword) ??
        false) {
      _sharedPrefs?.remove(SharedPreferencesKeys.userPassword);
    }
  }

  /// store user token value
  String? get userToken =>
      _sharedPrefs?.getString(SharedPreferencesKeys.userToken);

  set userToken(String? newValue) {
    _sharedPrefs?.setString(SharedPreferencesKeys.userToken, newValue!);
  }

  void updateUserToken(String value) {
    if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userToken) ?? false) {
      _sharedPrefs?.remove(SharedPreferencesKeys.userToken);
    }
    _sharedPrefs?.setString(SharedPreferencesKeys.userToken, value);
  }

  void removeUserToken() {
    if (_sharedPrefs?.containsKey(SharedPreferencesKeys.userToken) ?? false) {
      _sharedPrefs?.remove(SharedPreferencesKeys.userToken);
    }
  }

  /// common methods
  resetAll() {
    _sharedPrefs?.clear();
  }
}