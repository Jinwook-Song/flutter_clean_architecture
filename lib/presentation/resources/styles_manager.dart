import 'package:clean_architecture/presentation/resources/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight,
    [String? fontFamily = FontConstants.fontFamily]) {
  return TextStyle(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}

TextStyle getRegularStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.regular);
}

TextStyle getLightStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.light);
}

TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.bold);
}

TextStyle getSemiBoldStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.semiBold);
}

TextStyle getMediumStyle(
    {double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeightManager.medium);
}
