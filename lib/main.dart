import 'package:flutter/material.dart';
import 'package:flutter_pj/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tooba",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Color(0xFF00CE62)),
        //primaryColor: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}
