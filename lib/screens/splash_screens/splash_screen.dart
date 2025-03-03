import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodpanda/consts/colors.dart';
import 'package:foodpanda/consts/images.dart';
import 'package:foodpanda/screens/splash_screens/location_access_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LocationAccessScreen();
            },
          ),
        );
      },
    );
  }

  final String id = "splash1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Image.asset(
          AppImages.logo,
          scale: 3,
        ),
      ),
    );
  }
}
