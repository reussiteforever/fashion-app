import 'package:fashionapp/colors.dart';
import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String assetName = 'assets/icons/menu.svg';

AppBar customAppBar() {
  return AppBar(
    elevation: 0,
    leading: const Padding(
      padding: EdgeInsets.only(
        left: 10,
      ),
      child: Icon(
        Icons.menu,
        color: AppColors.swatch_4,
        size: 40,
      ),
    ),
    // SvgPicture.asset(
    //   assetName,
    //   color: CustomTheme.appTheme.shadowColor,
    //   semanticsLabel: 'A custom menu icon',
    //   width: 20,
    //   height: 5,
    // ),
    actions: const [
      Padding(
        padding: EdgeInsets.only(
          right: 10,
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage("assets/images/image_1.png"),
        ),
      ),
    ],
  );
}
