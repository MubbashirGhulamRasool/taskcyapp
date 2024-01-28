import 'dart:async';

import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../theme/fonts.dart';
import '../onboard_screens/onboard_view_one.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // print("Timer Start Hogaya");
    // Perform one-time initialization tasks here
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SplashView(),
        ),
      );
    });
    // super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colorconstant.blue,
        child: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Center the column vertically
            children: [
              Image.asset(
                'assets/images/Logo.png',
                width: 200,
                height: 200,
              ),
              // Text(
              //   "Taskcy App",
              //   style: TextStyle(
              //     color: Colorconstant.whiteColor,
              //     fontFamily: FontConstants.primaryFontFamily,
              //     fontSize: FontConstants.defaultFontSize,
              //     fontStyle: FontStyle.normal,
              //     fontWeight: FontWeight.w400,
              //     height: 1.0,
              //   ),
              // ), // Center the text horizontally
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Clean up resources when the widget is removed from the tree
    super.dispose();
  }
}
