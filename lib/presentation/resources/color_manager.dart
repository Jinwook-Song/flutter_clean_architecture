import 'package:flutter/material.dart';

class ColorManager {
  static const Color primary = Color(0xFFED9728);
  static const Color darkGrey = Color(0xFF525252);
  static const Color grey = Color(0xFF737477);
  static const Color lightGrey = Color(0xFF9E9E9E);
  static const Color primaryOpacity70 = Color(0xB3ED9728); // 투명도를 포함한 색상

  static const Color darkPrimary = Color(0xFFD17D11);
  static const Color grey1 = Color(0xFF707070);
  static const Color grey2 = Color(0xFF797979);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color error = Color(0xFFE61F34);
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    final buffer = StringBuffer();

    // '#' 문자가 있다면 제거합니다.
    if (hexColorString.startsWith('#')) {
      hexColorString = hexColorString.substring(1);
    }

    // 6자리 색상 코드인 경우 알파(alpha) 값 'ff'를 추가합니다.
    if (hexColorString.length == 6) {
      buffer.write('ff');
    }

    buffer.write(hexColorString);

    // 16진수 문자열을 정수로 변환하고 Color 객체를 생성합니다.
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
