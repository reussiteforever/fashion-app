import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_spacer.dart';

/*
 * This Widget is a generic component 
 * to render icons boxes 
 * in the App
 */
Widget iconsContainer(dynamic icon, Color iconColor, double iconSize) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, top: 30),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      height: 45,
      decoration: BoxDecoration(
        color: CustomTheme.appTheme.primaryColorLight,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: InkWell(
          // borderRadius: const BorderRadius.all(Radius.circular(38)),
          onTap: () {},
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    ),
  );
}
