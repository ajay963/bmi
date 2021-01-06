import 'package:flutter/cupertino.dart';
import 'dart:math';

class Fxbmi {
  int height;
  int weight;
  int age;
  double _bmi;

  Fxbmi({@required this.age, @required this.height, @required this.weight});

  String calcbmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(2);
  }

  String getresult() {
    if (_bmi >= 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String advice() {
    if (_bmi >= 25) {
      return 'You have higher than normal bodyweight. Try to exercise hard';
    } else if (_bmi > 18.5) {
      return 'Keep it Up, Good Job';
    } else {
      return 'Low body weight ,please maintain your daily meal';
    }
  }
}
