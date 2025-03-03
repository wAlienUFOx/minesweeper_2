import 'package:flutter/material.dart';
import 'custom_theme.dart';

class TextsTheme {
  const TextsTheme._();

  static TextsTheme get light => const TextsTheme._();

  static TextsTheme of(BuildContext context) {
    final themeColor = CustomTheme.of(context);
    switch (themeColor.theme) {
      default:
        return light;
    }
  }

  TextStyle heading1(Color color) {
    return TextStyle(
      color: color,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      fontSize: 28,
    );
  }
}
