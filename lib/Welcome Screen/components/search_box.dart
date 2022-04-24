import 'package:fashionapp/App%20Common%20Components/custom_spacer.dart';
import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget searchBox() {
  return Padding(
    padding: const EdgeInsets.only(left: 12, right: 10, top: 30),
    child: Container(
      decoration: BoxDecoration(
        color: CustomTheme.appTheme.primaryColorLight,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Container(
          height: 45,
          child: Center(
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(38)),
              onTap: () {},
              child: Row(
                children: <Widget>[
                  FaIcon(
                    FontAwesomeIcons.searchengin,
                    size: 18,
                    color: CustomTheme.appTheme.primaryColor,
                  ),
                  gapWidth(8),
                  Expanded(
                    child: TextField(
                      maxLines: 1,
                      enabled: false,
                      onChanged: (String txt) {},
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      cursorColor: CustomTheme.appTheme.primaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(
                            color: CustomTheme.appTheme.disabledColor),
                      ),
                    ),
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
