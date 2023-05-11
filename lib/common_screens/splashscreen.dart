import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/route_paths.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  loadValues() async {
    Timer(Duration(seconds: 2),
        () => Navigator.of(context).pushReplacementNamed(RoutePaths.login));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadValues();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).viewPadding.top;
    // TODO: implement build
    return Scaffold(
      // backgroundColor: Color(0XFF3C6255),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
                     image: DecorationImage(
                image: AssetImage("assets/images/SplashScreen.JPG"),
                fit: BoxFit.contain,
        ),
        ),
        
      ),
    );
  }
}
