import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/constants/enums/app_theme_enum.dart';
import 'package:flutter_architecture_template/core/init/theme/app_theme.dart';
import 'package:flutter_architecture_template/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;

  ThemeData get currentTheme => AppThemeLight.instance.theme;

  void changeValue(AppTheme theme) {
    theme == AppThemes.LIGHT
        ? _currentTheme = ThemeData.light()
        : _currentTheme = ThemeData.dark();
    notifyListeners();
  }
}
