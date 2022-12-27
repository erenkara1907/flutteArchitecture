import 'package:flutter/material.dart';

class TextThemeLight {
  static TextThemeLight? _instance;
  static TextThemeLight get instance {
    _instance ??= TextThemeLight._init();
    return _instance!;
  }

  TextThemeLight._init();

  final hedaline1 = const TextStyle(fontSize: 96, fontWeight: FontWeight.w300, letterSpacing: -1.5);
}
