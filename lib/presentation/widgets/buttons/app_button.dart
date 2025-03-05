import 'package:flutter/material.dart';
import 'package:minesweeper_2/presentation/theme/colors.dart';
import 'package:minesweeper_2/presentation/theme/texts.dart';

class AppButton extends StatelessWidget {
  final void Function() onPressed;
  final String title;
  final double borderRadius;
  final EdgeInsets padding;
  final bool fullWidth;

  const AppButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.borderRadius = 10,
    this.padding = const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
    this.fullWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    Widget button = TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
        padding: padding,
        backgroundColor: ColorsTheme.of(context).primarySF,
      ),
      child: Text(title, style: TextsTheme.of(context).heading(ColorsTheme.of(context).primaryText)),
    );

    if (!fullWidth) return button;
    return SizedBox(width: double.infinity, child: button);
  }
}
