import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/product_info.dart';

class ProductDetailBody extends StatelessWidget {
  const ProductDetailBody({
    Key? key,
    required this.size,
    required this.imagesList,
  }) : super(key: key);

  final Size size;
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: size.height / 1.8,
          width: size.width,
          child: TabBarView(
            children: [
              for (final tab in imagesList) Image.asset(tab),
            ],
          ),
        ),
        Positioned(
          top: (size.height / 3.5) + 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              productInfo(context, Icons.sunny, "UV\nProtection"),
              productInfo(
                  context, FontAwesomeIcons.glasses, "Ultra Grip\nRubber"),
              productInfo(context, Icons.security, "100% home\nVentilation"),
            ],
          ),
        )
      ],
    );
  }
}
