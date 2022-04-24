import 'package:flutter/material.dart';

import 'text_on_video.dart';

/*
 * WIDGET THAT CONTAINS THE VIDEO
 * ON THE WELCOME SCREEN
 */
Widget videoBox(context) {
  Size size = MediaQuery.of(context).size;
  return Stack(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        width: size.width,
        height: 200,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image_1.png"),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      textOnVideo(30, 40, "SALE UP TO", 18, bold: FontWeight.normal),
      textOnVideo(30, 60, "70%", 68, bold: FontWeight.bold),
      textOnVideo(130, 130, "OFF", 18, bold: FontWeight.normal),
    ],
  );
}
