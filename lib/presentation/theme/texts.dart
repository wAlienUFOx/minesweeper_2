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

  TextStyle heading(Color color) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      fontSize: 26,
    );
  }
}
