import 'package:fashionapp/App%20Common%20Components/icons_container.dart';
import 'package:fashionapp/Checkout%20Screen/components/text_field.dart';
import 'package:fashionapp/Welcome%20Screen/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../App Common Components/custom_spacer.dart';
import '../../theme/custom_theme.dart';
import 'next_button.dart';
import 'thankyouScreen.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  dynamic cardSelected = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              "Payment",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapHeight(20),
                      Row(
                        children: [
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            child: wideCardUi(context),
                            visible: !cardSelected ? true : false,
                          ),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            child: addCardUi(context),
                            visible: cardSelected ? true : false,
                          ),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            child: cardUi(context),
                            visible: cardSelected ? true : false,
                          ),
                          cardUi(context),
                        ],
                      ),
                      gapHeight(30),
                      const Text(
                        "We accept",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.start,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          iconsContainer(FontAwesomeIcons.ccVisa, Colors.blue,
                              (size.width - 48) / 13),
                          iconsContainer(FontAwesomeIcons.ccMastercard, null,
                              (size.width - 48) / 13),
                          iconsContainer(FontAwesomeIcons.ccAmex, Colors.blue,
                              (size.width - 48) / 13),
                          iconsContainer(FontAwesomeIcons.alipay, null,
                              (size.width - 48) / 13),
                          iconsContainer(FontAwesomeIcons.paypal, Colors.blue,
                              (size.width - 48) / 13),
                        ],
                      ),
                      gapHeight(30),
                      paymentDetailsRow(
                        Text(
                          "Sub Total",
                          style: TextStyle(
                            color: CustomTheme.appTheme.disabledColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "\$79",
                          style: TextStyle(
                            color: CustomTheme.appTheme.disabledColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      gapHeight(16),
                      paymentDetailsRow(
                        Text(
                          "Shipping",
                          style: TextStyle(
                            color: CustomTheme.appTheme.disabledColor,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Free",
                          style: TextStyle(
                            color: CustomTheme.appTheme.disabledColor,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      gapHeight(16),
                      paymentDetailsRow(
                        const Divider(
                          height: 20,
                          thickness: 5,
                          indent: 20,
                          endIndent: 0,
                          color: Colors.black,
                        ),
                        Divider(
                          color: CustomTheme.appTheme.shadowColor,
                          // height: 10,
                          thickness: 10,
                        ),
                      ),
                      gapHeight(16),
                      paymentDetailsRow(
                        Text(
                          "Total",
                          style: TextStyle(
                            color: CustomTheme.appTheme.shadowColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "\$79",
                          style: TextStyle(
                            color: CustomTheme.appTheme.shadowColor,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      nextScreenButton(context, "Place Order", () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ThankYouScreen(),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget paymentDetailsRow(Widget element1, Widget element2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        element1,
        element2,
      ],
    );
  }

  Widget cardUi(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          setState(() {
            cardSelected = !cardSelected;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: MediaQuery.of(context).size.width / 3.5,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomTheme.appTheme.shadowColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Credit Card",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              gapHeight(30),
              const Text(
                "**** 1234",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  FaIcon(
                    FontAwesomeIcons.ccVisa,
                    color: Colors.blue,
                  ),
                  Text(
                    "01/22",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget addCardUi(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
          width: MediaQuery.of(context).size.width / 5,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomTheme.appTheme.primaryColorLight,
          ),
          child: const Center(
            child: Icon(FontAwesomeIcons.plus),
          )),
    );
  }

  Widget wideCardUi(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        width: MediaQuery.of(context).size.width / 2,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: CustomTheme.appTheme.shadowColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //first element
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThankYouScreen(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: CustomTheme.appTheme.primaryColorLight,
                  ),
                  child: const Center(
                    child: Icon(FontAwesomeIcons.plus),
                  ),
                ),
              ),
            ),
            //second element
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Credit Card",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                gapHeight(30),
                const Text(
                  "**** 1234",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    FaIcon(
                      FontAwesomeIcons.ccVisa,
                      color: Colors.blue,
                    ),
                    Text(
                      "01/22",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
