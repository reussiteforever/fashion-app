import 'package:flutter/material.dart';

import 'product_box.dart';

Widget productBox(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 290,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return ProductBox(
          image: "assets/images/image_1.png",
          title: "Samantha",
          price: 440,
          press: () {},
        );
      }),
      itemCount: 4,
    ),
  );
}
