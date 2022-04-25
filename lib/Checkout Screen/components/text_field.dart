import 'package:flutter/material.dart';

import '../../App Common Components/custom_spacer.dart';
import '../../theme/custom_theme.dart';

Widget textFieldContainer(String labeltext, String hintText) {
  return Padding(
    padding: const EdgeInsets.only(left: 24, right: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labeltext,
          style: TextStyle(
            fontSize: 16,
            color: CustomTheme.appTheme.disabledColor,
          ),
        ),
        gapHeight(5),
        Container(
          decoration: BoxDecoration(
            color: CustomTheme.appTheme.primaryColorLight,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: CustomTheme.appTheme.dividerColor,
                blurRadius: 8,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              height: 48,
              child: Center(
                child: TextField(
                  maxLines: 1,
                  onChanged: (String txt) {},
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  cursorColor: CustomTheme.appTheme.primaryColor,
                  decoration: InputDecoration(
                    errorText: null,
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle:
                        TextStyle(color: CustomTheme.appTheme.disabledColor),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
