import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  static const Gradient backgroundgradient = RadialGradient(
    colors: [
      Color.fromRGBO(97, 82, 173, 1.0),
      Color.fromRGBO(65, 57, 155, 1.0),
      Color.fromRGBO(65, 57, 155, 1.0),
    ],
    center: Alignment.topCenter,
    radius: 1.0,
  );
 static final WidgetStateProperty<Color?> blueColorButton =
    WidgetStateProperty.all(Color.fromRGBO(65, 57, 155, 1.0));
}
