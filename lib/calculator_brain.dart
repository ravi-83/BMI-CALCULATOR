import 'dart:math';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CalculatorBrain {
  int weight;
  int height;
  double _bmi;
  double lowerWeight;
  double lowerBMI=18.5;
  double higherWeight;
  double higherBMI=25;

  CalculatorBrain({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getLowerWeight(){
    lowerWeight=lowerBMI * pow(height/100, 2);
    return lowerWeight.toStringAsFixed(0);
  }

  String getHigherWeight(){
    higherWeight=higherBMI * pow(height/100, 2);
    return higherWeight.toStringAsFixed(0);
  }

  String getBMI() {
    if (_bmi >= 25)
      return 'Overweight';
    else if (_bmi >= 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }
  String getWeightToLoss(){
    if(_bmi >=25){
      String str=(weight-higherWeight).toStringAsFixed(0);
      return 'You must lose '+str+' kg of Weight';
    }else if (_bmi >= 18.5) {
      return 'Perfect!!';
    } else {
      String str=(lowerWeight-weight).toStringAsFixed(0);
      return 'You must gain '+str+' kg of Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
  IconData iconFun(){
    if(_bmi>=25) {
      return Icons.error_outline_outlined;
    }else if (_bmi >= 18.5) {
      return Icons.check_circle_outline;
    } else {
      return Icons.error_outline_outlined;
    }
  }
  Color iconColor(){
    if(_bmi>=25) {
      return Colors.red;
    }else if (_bmi >= 18.5) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}