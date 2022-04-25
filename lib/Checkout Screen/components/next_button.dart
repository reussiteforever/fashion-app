import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/custom_theme.dart';

Widget nextScreenButton(context, String textLabel, dynamic press) {
  Size size = MediaQuery.of(context).size;
  return Padding(
    padding:
        EdgeInsets.only(left: 24, right: 24, bottom: 8, top: size.height / 12),
    child: Container(
      height: 48,
      decoration: BoxDecoration(
        color: CustomTheme.appTheme.shadowColor,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: CustomTheme.appTheme.dividerColor,
            blurRadius: 8,
            offset: const Offset(4, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
          highlightColor: Colors.transparent,
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    textLabel,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: CustomTheme.appTheme.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
