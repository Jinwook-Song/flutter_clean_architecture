import 'package:flutter/material.dart';

class ColorManager {
  static Color primary = HexColor.fromHex("#ED9728");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
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
