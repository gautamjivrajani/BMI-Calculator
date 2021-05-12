import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final height;
  final weight;

  double _bmi;

  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight !';
    } else if (_bmi >= 18.5) {
      return 'Normal !';
    } else {
      return 'Underweight !';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than nornam body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a noraml body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
