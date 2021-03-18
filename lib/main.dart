import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:farmer/pages/bottom_tab_screen.dart';
import 'package:farmer/pages/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Clean Code',
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Text(
              'Farmer',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            nextScreen: BottomTabScreen(),
            splashTransition:
                SplashTransition.fadeTransition,
            // pageTransitionType: PageTransitionType.scale,
            backgroundColor: Colors.blue));
  }
}
