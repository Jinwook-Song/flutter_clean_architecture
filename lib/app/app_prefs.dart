// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/presentation/resources/langague_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREF_KEY_LANG = 'PREF_KEY_LANG';
const String PREF_KEY_ONBOARDING = 'PREF_KEY_ONBOARDING';
const String PREF_KEY_IS_USER_LOGGED_IN = 'PREF_KEY_IS_USER_LOGGED_IN';

class AppPreferences {
  static const PREF_PREFIX = '__CLEAN_ARCH__';

  final SharedPreferences _preferences;

  AppPreferences(this._preferences);

  String getAppLanguage() {
    String? langugage = _preferences.getString(PREF_PREFIX + PREF_KEY_LANG);

    return langugage ?? LanguageType.ENGLISH.getValue();
  }

  Future<void> setOnboardingViewed() async {
    await _preferences.setBool(PREF_KEY_ONBOARDING, true);
  }

  bool isOnboardingViewed() {
    return _preferences.getBool(PREF_KEY_ONBOARDING) ?? false;
  }

  Future<void> setIsUserLoggedIn() async {
    await _preferences.setBool(PREF_KEY_IS_USER_LOGGED_IN, true);
  }

  bool isUserLoggedIn() {
    return _preferences.getBool(PREF_KEY_IS_USER_LOGGED_IN) ?? false;
  }
}
