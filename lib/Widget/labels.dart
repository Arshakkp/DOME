import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabelStyle {
  static const TextStyle heading = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
  static TextStyle headingWithColor(Color color) => TextStyle(
        fontSize: 40,
        color: color,
        fontWeight: FontWeight.bold,
      );
  static const TextStyle lightsubheading = TextStyle(
    fontSize: 16,
    color: Colors.black26,
    fontWeight: FontWeight.bold,
  );
}
