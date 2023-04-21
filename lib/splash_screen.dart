import 'dart:async';

import 'package:flutter/material.dart';
import 'config/custom_colors.dart';
import 'pages/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context) => const LoginPage())
      );
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            LinearProgressIndicator(
              color: CustomColors.primaryColor,
              backgroundColor: CustomColors.secondColor,
            ),
          ],
        ),
      ),
    );
  }
}
