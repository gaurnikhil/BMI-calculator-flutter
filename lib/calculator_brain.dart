import 'dart:math';

class CalculatorBrain {
  final height;
  final weight;

  CalculatorBrain({this.height, this.weight});

  double _bmi;

  String getBMI() {
    _bmi = weight / pow(height / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'OverWeighted';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You need to exercise more and maintain your diet';
    } else if (_bmi > 18.5) {
      return 'Your are just doing find. Keep it up!';
    } else {
      return 'Eat healthy and put on some weight';
    }
  }
}
