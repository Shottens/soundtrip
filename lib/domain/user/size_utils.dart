import 'package:flutter/material.dart';

class SizeUtils {
  static const double baseWidth = 360; 
  static const double baseHeight = 800;

  
  static double w(BuildContext context, double value) {
    final screenWidth = MediaQuery.of(context).size.width;
    return value * screenWidth / baseWidth;
  }

  /// масштабує значення по висоті
  static double h(BuildContext context, double value) {
    final screenHeight = MediaQuery.of(context).size.height;
    return value * screenHeight / baseHeight;
  }

  /// масштабує розмір шрифту
  static double sp(BuildContext context, double value) {
    final scale = MediaQuery.of(context).textScaleFactor;
    return w(context, value) / scale;
  }
}
