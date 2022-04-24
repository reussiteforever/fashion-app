import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';

Widget textOnVideo(double left, double top, String text, double textFontSize,
    {bold}) {
  return Positioned(
    left: left,
    top: top,
    child: Text(
      text,
      style: TextStyle(
        color: CustomTheme.appTheme.primaryColorLight,
        fontSize: textFontSize,
        fontWeight: bold,
      ),
    ),
  );
}
