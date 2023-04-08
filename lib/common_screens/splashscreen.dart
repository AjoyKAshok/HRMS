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
      backgroundColor: Color(0XFF3C6255),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 150,
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                  image: const DecorationImage(
                image: AssetImage("assets/images/HRMS.png"),
                fit: BoxFit.contain,
              )),
            ),
            // SizedBox(height: 5,),

            const Text(
              'HRMS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
