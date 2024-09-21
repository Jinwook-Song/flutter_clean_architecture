import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = const Color(0xFFED9728);
  static Color darkGrey = const Color(0xFF525252);
  static Color grey = const Color(0xFF737477);
  static Color lightGrey = const Color(0xFF9E9E9E);
  static Color primaryOpacity70 = const Color(0xB3ED9728); // 투명도를 포함한 색상

  static Color darkPrimary = const Color(0xFFD17D11);
  static Color grey1 = const Color(0xFF707070);
  static Color grey2 = const Color(0xFF797979);
  static Color white = const Color(0xFFFFFFFF);
  static Color error = const Color(0xFFE61F34);
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
