import 'dart:math';

import 'package:flutter/material.dart';

class BmiReport {
  double _bmi = 0;

  BmiReport({required int height, required int weight}) {
    _bmi = (weight / pow(height * 0.01, 2));
  }

  String get bmi {
    return _bmi.toStringAsFixed(1);
  }

  String get message {
    if (_bmi > 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String get interpretation {
    if (_bmi > 25) {
      return "You have a higher than normal body weight. Try to eat healthy and exercise more";
    } else if (_bmi > 18.5) {
      return "You have an ideal body weight. Good job and maintain your routine !";
    } else {
      return "You have a lower than normal body weight. You should eat more & try weight training to gain muscle mass.";
    }
  }

  Color get color {
    if (_bmi > 25) {
      return Colors.red;
    } else if (_bmi > 18.5) {
      return Colors.green;
    } else {
      return Colors.deepPurple;
    }
  }
}
