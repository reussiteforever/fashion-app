import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../App Common Components/custom_spacer.dart';
import '../../App Common Components/icons_container.dart';
import '../../theme/custom_theme.dart';
import '../components/categories_list.dart';
import '../components/productBox.dart';
import '../components/search_box.dart';
import '../components/video_box.dart';

class WelcomeScreenBody extends StatelessWidget {
  const WelcomeScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        //WELCOME TEXT
        const Padding(
          padding: EdgeInsets.only(left: 12.0, top: 5.0),
          child: Text(
            "Welcome\nLetitia",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        //SEARCH & FILTER ROW
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //the search box
            Expanded(child: searchBox()),
            //the filter icon
            iconsContainer(
                FontAwesomeIcons.filter, CustomTheme.appTheme.primaryColor, 18),
          ],
        ),
        gapHeight(30),
        //VIDEO BOX
        videoBox(context),
        gapHeight(20),
        //Liste of product categories
        productCategories(context),
        gapHeight(20),
        //Horizontal Products List
        productBox(context),
      ],
    );
  }
}
