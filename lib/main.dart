import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color(0XFF0A0E21),
        ),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        primaryColor: Color(0XFF0A0E21),
        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Color(0XFFFFFFFF),
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
