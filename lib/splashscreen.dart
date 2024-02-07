import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:rent/webview.dart';

import 'home.dart';



class Splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animated Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset('assets/logo.png'), // Replace with your image asset
        nextScreen: WebviewTwo(url:"https://system.abyssiniasoftware.com/rent/"),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
      ),
    );
  }
}

