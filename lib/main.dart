import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    Center(
      child: Text(
        "Hello Flutter",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.red,
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
        textScaleFactor: 2,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
