import 'package:clean_architecture/presentation/color_manager.dart';
import 'package:clean_architecture/presentation/font_manager.dart';
import 'package:clean_architecture/presentation/styles_manager.dart';
import 'package:clean_architecture/presentation/value_manager.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  return ThemeData(
    // main colors of the app
    colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.primary),
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,

    // ripple color
    splashColor: ColorManager.primaryOpacity70,

    // card view theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    // App bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: FontSize.s16,
      ),
    ),

    // Button theme
    // Text theme
    // input decoration theme (text form field)
  );
}
