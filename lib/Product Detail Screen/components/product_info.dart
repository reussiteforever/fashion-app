import 'package:flutter/material.dart';

import '../../theme/custom_theme.dart';

Widget productInfo(context, icon, description) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0),
    child: Container(
      decoration: BoxDecoration(
        color: CustomTheme.appTheme.primaryColorLight,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width / 4,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(
            description,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
