import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:intership_task/auth_page.dart';
import 'package:intership_task/rerino_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: AnimatedSplashScreen(
          curve: Easing.linear,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: const Duration(milliseconds: 500),
          centered: true,
          splash: Image.asset('assets/images/splash.jpg'),
          nextScreen: const RetinoPage()),
    );
  }
}
