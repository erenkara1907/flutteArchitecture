import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final Color brown = Colors.brown;
  final Color red = Colors.red;
  final Color white = Colors.white;
  final Color gray = Colors.grey;
  final Color lightGray = Colors.grey.shade100;
  final Color darkGray = Colors.grey.shade900;
  final Color black = Colors.black;
}
