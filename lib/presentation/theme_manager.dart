import 'package:clean_architecture/presentation/color_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main colors of the app
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    // card view theme
    // App bar theme
    // Button theme
    // Text theme
    // input decoration theme (text form field)
  );
}
