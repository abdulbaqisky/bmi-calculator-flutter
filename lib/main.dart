import 'package:flutter/material.dart';
import 'screens/imput_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF111539),
        //primaryColor: Color(0XFF0A0E21),
        accentColor: Color(0XFFFF0067),
        scaffoldBackgroundColor: Color(0XFF282B4E),
        //scaffoldBackgroundColor: Color(0XFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}
