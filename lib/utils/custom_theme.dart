import 'package:flutter/material.dart';

class CustomTheme {
  static const Color grey = Color(0XFFDFDFDF);
  static const Color yellow = Color(0XFFFFDB47);
  static const Color green = Color(0XFF0A9250);
  static const Color barGrey = Color(0XFFBBC3CE);
  static const Color brown = Color(0XFF867070);
  static const cardShadow = [
    BoxShadow(color: grey, blurRadius: 6, spreadRadius: 4, offset: Offset(0, 2))
  ];
  static const buttonShadow = [
    BoxShadow(color: grey, blurRadius: 3, spreadRadius: 4, offset: Offset(1, 3))
  ];

  static ThemeData getTheme() {
    Map<String, double> fontSize = {
      "sm": 14,
      "md": 18,
      "lg": 24,
    };
    return ThemeData(
      primaryColor: yellow,
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          toolbarHeight: 70,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: fontSize['lg'],
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
          actionsIconTheme: const IconThemeData(
            color: Colors.transparent,
          ),
          ),
          tabBarTheme: const TabBarTheme(labelColor: green, unselectedLabelColor: barGrey,),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
            color: Colors.black,
            fontSize: fontSize['lg'],
            fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
            color: Colors.black,
            fontSize: fontSize['md'],
            fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(
            color: Colors.black,
            fontSize: fontSize['sm'],
            fontWeight: FontWeight.bold),
        bodySmall: TextStyle(
            color: Colors.black,
            fontSize: fontSize['sm'],
            fontWeight: FontWeight.normal),
        titleSmall: TextStyle(
          color: Colors.black,
          fontSize: fontSize['sm'],
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
