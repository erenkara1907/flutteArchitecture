import 'package:architecture_theme/theme/light/color_scheme_light.dart';
import 'package:architecture_theme/theme/light/text_theme_light.dart';
import 'package:flutter_architecture_template/core/init/theme/light/pading_insets.dart';

abstract class ILightTheme {
  TextThemeLight textThemeLight = TextThemeLight.instance!;
  ColorSchemeLight colorSchemeLight = ColorSchemeLight.instance!;
  PadingInsets insets = PadingInsets();
}