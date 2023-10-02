import 'package:flutter/material.dart';

class MaterialCalcColors extends MaterialColor {
  static const int _primaryColorValue = 0xFFFFC700;

  MaterialCalcColors()
      : super(_primaryColorValue, {
          50: const Color(0xFFFFF9E5),
          100: const Color(0xFFFFF3C9),
          200: const Color(0xFFFFECA7),
          300: const Color(0xFFFFE176),
          400: const Color(0xFFFFD541),
          500: const Color(_primaryColorValue),
          600: const Color(0xFFB48D00),
          700: const Color(0xFF856800),
          800: const Color(0xFF634E00),
          900: const Color(0xFF352A00),
        });
}
