import 'package:fashionapp/Checkout%20Screen/components/text_field.dart';
import 'package:flutter/material.dart';

import '../../App Common Components/custom_spacer.dart';
import 'next_button.dart';
import 'paymentScreen.dart';

class AddressScreen extends StatelessWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        gapHeight(16.0),
        //Name TextField
        textFieldContainer("Name", "Enter your name"),
        gapHeight(16),
        //Phone Number TextField
        textFieldContainer("Phone ", "Enter your phone number"),
        gapHeight(16),
        //City TextField
        textFieldContainer("City ", "Enter your city"),
        gapHeight(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: textFieldContainer("State ", "Enter your stater")),
            Expanded(
                child: textFieldContainer("Zip Code ", "Enter your zip code")),
          ],
        ),
        //Payment Button
        nextScreenButton(context, "Payment", () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PaymentScreen(),
            ),
          );
        }),
      ],
    );
  }
}
