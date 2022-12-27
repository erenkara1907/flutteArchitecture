import 'package:flutter/material.dart';
import 'package:flutter_architecture_template/core/init/theme/app_theme.dart';
import 'package:flutter_architecture_template/core/init/theme/light/interface_light_theme.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData.light().copyWith(
        colorScheme: _appColorScheme(),
        textTheme: buildTextTheme(),
        tabBarTheme: buildTabBarTheme(),
      );

  TabBarTheme buildTabBarTheme() {
    return TabBarTheme(
        unselectedLabelStyle: textThemeLight.headline4.copyWith(
          color: colorSchemeLight.gray,
        ),
        labelPadding: insets.lowPaddingAll
      );
  }

  TextTheme buildTextTheme() {
    return TextTheme(
      headline1: textThemeLight.headline1,
    );
  }

  ColorScheme _appColorScheme() {
    return ColorScheme(
      brightness: Brightness.light,
      primary: colorSchemeLight.red,
      onPrimary: Colors.white,
      secondary: Colors.grey.shade200,
      onSecondary: Colors.red,
      error: Colors.red,
      onError: Colors.red.shade700,
      background: Colors.white,
      onBackground: Colors.white54,
      surface: Colors.green,
      onSurface: Colors.black,
    );
  }
}
