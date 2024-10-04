// ignore_for_file: constant_identifier_names

import 'package:clean_architecture/presentation/resources/langague_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String PREF_KEY_LANG = 'PREF_KEY_LANG';

class AppPreferences {
  static const PREF_PREFIX = '__CLEAN_ARCH__';

  final SharedPreferences _preferences;

  AppPreferences(this._preferences);

  String getAppLanguage() {
    String? langugage = _preferences.getString(PREF_PREFIX + PREF_KEY_LANG);

    return langugage ?? LanguageType.ENGLISH.getValue();
  }
}
