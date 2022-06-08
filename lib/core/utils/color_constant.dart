import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color blueA700 = fromHex('#0a5ef2');

  static Color bluegray300 = fromHex('#99a1b8');

  static Color blue5000 = fromHex('#00dbe8ff');

  static Color lightBlue8007f = fromHex('#7f0075bf');

  static Color blueA70033 = fromHex('#330a5ef2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blue50 = fromHex('#dbe8ff');

  static Color lightBlue800 = fromHex('#0075bf');

  static Color black90026 = fromHex('#26000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
