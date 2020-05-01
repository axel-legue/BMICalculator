import 'dart:math';

class BMIBrain {
  final int _height;
  final int _weight;
  double _bmi;

  BMIBrain(this._height, this._weight);

  String calculateBMI() {
    _bmi = _weight / pow(_height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 16) {
      return 'Severely underweight';
    } else if (_bmi < 18.5) {
      return 'Underweight';
    } else if (_bmi < 25) {
      return 'healthy weight';
    } else if (_bmi < 30) {
      return 'Overweight';
    } else if (_bmi < 35) {
      return 'Obese Class I';
    } else if (_bmi < 40) {
      return 'Obese Class II';
    } else {
      return 'Obese Class III';
    }
  }

  String getInterpretation() {
    if (_bmi < 16) {
      return 'Risk of developing problems such as nutritional deficiency and osteoporosis';
    } else if (_bmi < 18.5) {
      return 'Low Risk';
    } else if (_bmi < 25) {
      return 'Perfect condition';
    } else if (_bmi < 30) {
      return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi < 35) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else if (_bmi < 40) {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    } else {
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes';
    }
  }

  int get weight => _weight;

  int get height => _height;
}
