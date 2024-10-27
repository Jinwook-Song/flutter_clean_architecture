import 'package:clean_architecture/app/app.dart';
import 'package:clean_architecture/app/di.dart';
import 'package:clean_architecture/presentation/resources/langague_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await initAppModule();
  runApp(
    EasyLocalization(
        supportedLocales:
            LanguageType.values.map((e) => e.getLocale()).toList(),
        path: ASSETS_PATH_LOCALISATIONS,
        fallbackLocale: LanguageType.ENGLISH.getLocale(),
        child: MyApp()),
  );
}
