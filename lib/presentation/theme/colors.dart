import 'package:flutter/material.dart';
import 'custom_theme.dart';

class ColorsTheme {
  const ColorsTheme._();

  static ColorsTheme get light => const ColorsTheme._();
  static ColorsTheme get dark => const DarkColorsTheme._();

  static ColorsTheme getThemeFromKey(AppTheme appTheme) {
    switch (appTheme) {
      case AppTheme.dark:
        return dark;
      default:
        return light;
    }
  }

  static ColorsTheme of(BuildContext context) {
    final themeColor = CustomTheme.of(context);
    switch (themeColor.theme) {
      case AppTheme.dark:
        return dark;
      default:
        return light;
    }
  }

  AppTheme get theme => AppTheme.light;
}

class DarkColorsTheme implements ColorsTheme {
  const DarkColorsTheme._();

  // @override
  // Color get primary => const Color(0xFFFFFFFF);

  @override
  AppTheme get theme => AppTheme.dark;
}
