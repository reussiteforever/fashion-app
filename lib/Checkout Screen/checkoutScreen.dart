import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/addressScreen.dart';
import 'components/paymentScreen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  var pageController = PageController(initialPage: 0);

  List<Widget> pages = [
    const AddressScreen(),
    const PaymentScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: CustomTheme.appTheme.shadowColor,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24),
            child: FaIcon(
              FontAwesomeIcons.bagShopping,
              color: CustomTheme.appTheme.shadowColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: const [
            Text(
              "Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: AddressScreen(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
