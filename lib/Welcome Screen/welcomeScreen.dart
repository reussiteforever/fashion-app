import 'package:flutter/material.dart';
import 'body/welcome_screen_body.dart';
import 'components/custom_appbar.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //APPBAR
      appBar: customAppBar(),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 10.0,
        ),
        child: WelcomeScreenBody(),
      ),
    );
  }
}
