 import 'package:flutter/material.dart';
import 'package:tranceme/app/config/custom_colors.dart';
import 'package:tranceme/app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trance-me',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: CustomColors.primaryColor
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}