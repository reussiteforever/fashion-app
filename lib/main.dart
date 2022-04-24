import 'package:fashionapp/theme/custom_theme.dart';
import 'package:flutter/material.dart';

import 'Welcome Screen/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion App',
      theme: CustomTheme.appTheme,
      home: const WelcomeScreen(),
    );
  }
}
