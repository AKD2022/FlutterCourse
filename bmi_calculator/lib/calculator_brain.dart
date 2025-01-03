class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  double? _bmi; // private

  String calculateBMI() {
    _bmi = 703 * (weight / (height * height));
    return _bmi!.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You hae a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! > 18.5){
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}