import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  CalculatorBrain({
    required this.height,
    required this.weight,
  });

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1); // Returns a single decimal String
  }

  String getResult() {
    if (_bmi! > 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! > 25) {
      return 'You are overweight! Adopt a balanced diet and exercise regularly.';
    } else if (_bmi! > 18.5) {
      return 'You are normal! Keep it up.';
    } else {
      return 'You are underweight! Begin eating a little bit more.';
    }
  }
}
