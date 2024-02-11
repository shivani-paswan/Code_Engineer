import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonColors {
  static Color themeColor = Colors.black;
  static Color textColor = Colors.white;

  static Color colorPrimary =
      Color.fromARGB(255, 86, 86, 86) ?? Color.fromARGB(255, 80, 80, 81);
  static Color colorSecondary = const Color.fromRGBO(128, 128, 128, 0.4);

  static Color danger =
      Colors.red[600] ?? const Color.fromARGB(255, 229, 57, 53);
  static Color success =
      Colors.green[600] ?? const Color.fromARGB(255, 76, 197, 82);
  static Color weeklyOffColor = Color.fromARGB(255, 53, 8, 80);
  static SystemUiOverlayStyle systemUiOverlayStyle =
      SystemUiOverlayStyle(statusBarColor: colorSecondary);
}
