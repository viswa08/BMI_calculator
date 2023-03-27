import 'dart:math';

class bmiBrain {
  bmiBrain({required this.weight, required this.height});
  final int weight;
  final double height;

  double _bmiVal = 0;

  String bmiVal() {
    _bmiVal = weight / pow((height / 100), 2);

    return _bmiVal.toStringAsFixed(1);
  }

  String bmiResult() {
    bmiVal();

    if (_bmiVal > 25) {
      return 'Overweight';
    } else if (_bmiVal > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String bmiInterpret() {
    if (_bmiVal > 25) {
      return 'Calorie Deficit and some strength training will help in a long way';
    } else if (_bmiVal > 18.5) {
      return 'You are a champ, Keep lifting and smile away!';
    } else {
      return 'If you are a Vegan, Don\'t be. Focus on proteins and Gym.';
    }
  }
}
