import 'package:flutter/material.dart';

import '../../App Common Components/custom_spacer.dart';
import '../../theme/custom_theme.dart';

Widget addUnits() {
  return Row(
    children: [
      Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: CustomTheme.appTheme.primaryColor,
            border:
                Border.all(width: 1, color: CustomTheme.appTheme.shadowColor)),
        child: const Center(
          child: Text(
            "-",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      gapWidth(10),
      const Text(
        "1",
        style: TextStyle(fontSize: 16),
      ),
      gapWidth(10),
      Container(
        width: 25,
        height: 25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: CustomTheme.appTheme.shadowColor,
        ),
        child: const Center(
          child: Text(
            "+",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ],
  );
}
