// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

const String ASSETS_PATH_LOCALISATIONS = "assets/translations";

enum LanguageType {
  ENGLISH(
    value: 'en',
    locale: Locale("en", "US"),
  ),
  KOREAN(
    value: 'ko',
    locale: Locale("ko", "KR"),
  );

  // 필드 정의
  final String value;
  final Locale locale;

  // 생성자 정의
  const LanguageType({required this.value, required this.locale});

  // 메서드 정의
  String getValue() => value;

  Locale getLocale() => locale;
}
