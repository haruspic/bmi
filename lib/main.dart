import 'package:bmi/screens/imput_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff121639),
        ),
        scaffoldBackgroundColor: const Color(0xff121639),
      ),
      home: const InputPage(),
    );
  }
}
