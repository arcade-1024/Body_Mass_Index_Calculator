import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'inputPage.dart';

void main() => runApp(BMIcalculator());

class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Color(0xff0A0E21),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
      ),
      home: Input(),
    );
  }
}
