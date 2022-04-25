import 'package:flutter/material.dart';

import '../../Product Detail Screen/productScreen.dart';
import 'product_box.dart';

Widget productBox(context) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: 290,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return const ProductBox(
          image: "assets/images/image_1.png",
          title: "Gucci Plant",
          price: 4400,
        );
      }),
      itemCount: 4,
    ),
  );
}
