import 'dart:math';

class CalculateBrain {
  CalculateBrain({
    required this.weight,
    required this.height,
  });
  final int? weight;
  final int? height;

  final double _bmi = 1;

  String calculateBMI() {
    double _bmi = weight! / pow(height! / 100, 2);

    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Semirib ketibsizku';
    } else if (_bmi >= 18) {
      return 'Normalniy';
    } else {
      return 'Ko\'proq yeng';
    }
  }

  String getFeedback() {
    if (_bmi >= 25) {
      return "Tiqilib ovqat yemasdan sal minday harakatam qipturish kereda";
    } else if (_bmi >= 18) {
      return 'Chetki, malades semizammas, arvagammassiz ekan.';
    } else {
      return 'Sal minday ovqat-povqatam yeb turingda baraka topgur';
    }
  }
}
