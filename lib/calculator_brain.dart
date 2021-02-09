import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'You are OverWeighted Try to exercise everyday for 15 min';
    } else if (_bmi > 18.5) {
      return 'Your Weight is Normal! Thats Great';
    } else {
      return 'Your UnderWeighted try to eat more :)!';
    }
  }
}
