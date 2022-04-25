import 'package:fashionapp/Welcome%20Screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/custom_theme.dart';
import 'backtohome.dart';
import 'next_button.dart';

class ThankYouScreen extends StatelessWidget {
  const ThankYouScreen({Key? key}) : super(key: key);

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
          children: [
            const Text(
              "Thank you",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/success.gif"),
                    const Text(
                      "Order #12569 successfully placed.\nIt will be fulfilled and sent out in about\n2-7 business days",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            backToHomeButton(
              context,
              "Back to Home",
              () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
