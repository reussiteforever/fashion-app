import 'package:flutter/material.dart';

import 'package:fashionapp/colors.dart';

class CustomTheme {
  static ThemeData get appTheme {
    return ThemeData(
      //Colors
      primaryColor: AppColors.swatch_1,
      scaffoldBackgroundColor: AppColors.swatch_1,
      shadowColor: AppColors.swatch_4,
      primaryColorLight: Colors.white,
      fontFamily: 'Montserrat',
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: AppColors.swatch_2,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.swatch_1,
      ),
    );
  }
}
