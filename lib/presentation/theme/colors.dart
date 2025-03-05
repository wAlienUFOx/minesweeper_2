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

  Color get primarySF => const Color(0xFF000000);

  Color get primaryText => const Color(0xFFFFFFFF);

  Color get tileShadowColor => const Color(0xFF9E9E9E);

  Color get flagColor => const Color.fromARGB(255, 165, 42, 42);

  Color get tileColor => const Color(0x3DFFFFFF);

  Color get mineColor => const Color(0xFFFF5722);

  Color get colorOf1 => const Color.fromARGB(255, 0, 0, 255);

  Color get colorOf2 => const Color.fromARGB(255, 0, 100, 0);

  Color get colorOf3 => const Color.fromARGB(255, 178, 34, 34);

  Color get colorOf4 => const Color.fromARGB(255, 25, 25, 112);

  Color get colorOf5 => const Color.fromARGB(255, 139, 69, 19);

  Color get colorOf6 => const Color.fromARGB(255, 0, 255, 255);

  Color get colorOf7 => const Color.fromARGB(255, 0, 0, 0);

  Color get colorOf8 => const Color.fromARGB(255, 211, 211, 211);

  AppTheme get theme => AppTheme.light;
}

class DarkColorsTheme implements ColorsTheme {
  const DarkColorsTheme._();

  @override
  Color get primarySF => const Color.fromARGB(255, 100, 100, 100);

  @override
  Color get primaryText => const Color(0x8AFFFFFF);

  @override
  Color get tileShadowColor => const Color.fromARGB(255, 50, 50, 50);

  @override
  Color get flagColor => const Color.fromARGB(255, 165, 42, 42);

  @override
  Color get tileColor => const Color.fromARGB(255, 74, 75, 75);

  @override
  Color get mineColor => const Color(0xFFFF5722);

  @override
  Color get colorOf1 => const Color.fromARGB(255, 0, 0, 255);

  @override
  Color get colorOf2 => const Color.fromARGB(255, 0, 100, 0);

  @override
  Color get colorOf3 => const Color.fromARGB(255, 178, 34, 34);

  @override
  Color get colorOf4 => const Color.fromARGB(255, 25, 25, 112);

  @override
  Color get colorOf5 => const Color.fromARGB(255, 139, 69, 19);

  @override
  Color get colorOf6 => const Color.fromARGB(255, 0, 255, 255);

  @override
  Color get colorOf7 => const Color.fromARGB(255, 0, 0, 0);

  @override
  Color get colorOf8 => const Color.fromARGB(255, 211, 211, 211);

  @override
  AppTheme get theme => AppTheme.dark;
}
