import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../App Common Components/icons_container.dart';
import '../Checkout Screen/checkoutScreen.dart';
import 'body/product_detail_body.dart';
import 'components/add_units.dart';
import 'components/stars_view.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  dynamic _value = 1;
  List<String> imagesList = [
    "assets/images/person_1.png",
    "assets/images/person_2.png",
    "assets/images/image_3.png",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: CustomTheme.appTheme.primaryColor,
        appBar: AppBar(
          leading: IconButton(
            icon: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
              child: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: CustomTheme.appTheme.shadowColor,
              ),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          elevation: 0,
          actions: [
            Row(
              children: [
                iconsContainer(FontAwesomeIcons.heart, Colors.red, 18),
                iconsContainer(FontAwesomeIcons.bagShopping,
                    CustomTheme.appTheme.shadowColor, 18),
              ],
            ),
          ],
        ),
        body: ProductDetailBody(size: size, imagesList: imagesList),
        bottomSheet: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(200)),
            color: Colors.white,
          ),
          height: size.height / 3.5,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //1st Row containing stars
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: Text(
                      "Navigator frame sunglasses",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  starsView(),
                ],
              ),
              //2nd row of switch Buttons
              Row(
                children: [
                  for (int i = 1; i <= 2; i++)
                    Radio(
                      value: i,
                      groupValue: _value,
                      activeColor: i == 1 ? Colors.orange : Colors.teal,
                      onChanged: (value) {
                        setState(() {
                          dynamic c;
                          _value = value;
                          c = imagesList[0];
                          imagesList[0] = imagesList[1];
                          imagesList[1] = c;
                        });
                      },
                      focusColor: MaterialStateColor.resolveWith(
                          (states) => i == 1 ? Colors.orange : Colors.teal),
                      fillColor: MaterialStateColor.resolveWith(
                          (states) => i == 1 ? Colors.orange : Colors.teal),
                      overlayColor: MaterialStateColor.resolveWith((states) =>
                          i == 1
                              ? Colors.orange.withOpacity(0.6)
                              : Colors.teal.withOpacity(0.6)),
                      hoverColor: MaterialStateColor.resolveWith(
                          (states) => i == 1 ? Colors.orange : Colors.teal),
                    ),
                ],
              ),
              //Price and Add to cart Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "\$123",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  addUnits(),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckoutScreen(),
                        ),
                      );
                    },
                    child: const Text('Add to Cart'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateColor.resolveWith(
                        (states) => CustomTheme.appTheme.shadowColor,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
