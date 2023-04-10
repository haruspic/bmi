import 'package:flutter/material.dart';

import 'imput_page.dart';

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
