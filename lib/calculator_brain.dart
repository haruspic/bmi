import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double bmi = 5;

  double calculateBMI() {
    return bmi = weight / pow(height / 100, 2);
  }

  String checkResult() {
    if (bmi >= 25) {
      return "Owerweight";
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String interpritation() {
    if (bmi >= 25) {
      return "You have a higher than normal body weight. Try to exercise more.";
    } else if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bir more.';
    }
  }
}
