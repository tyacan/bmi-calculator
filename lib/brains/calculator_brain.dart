import 'dart:math';

///
/// BMI : Body Mass Index, also called (Quetelet index)
///
class CalculatorBrain {

  CalculatorBrain(
    {
      this.height,
      this.weight,
      this.age
    }
  ) : _bmi = weight / pow((height/100), 2);

  final int height;
  final int weight;
  final int age;

  double _bmi;// = 90;

  String calculateBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25.0) {
      return 'Overwight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}