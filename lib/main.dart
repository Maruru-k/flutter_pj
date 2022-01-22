import 'package:flutter/material.dart';

void main() {
  runApp(MyStatelessWidget());
}

class MyStatelessWidget extends StatelessWidget {

  final double topMargin = 30;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      textDirection: TextDirection.ltr,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: topMargin),
          color: Colors.white,
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: topMargin),
          padding: EdgeInsets.only(top: 20),
          color: Colors.teal,
          height: 90,
          child: const Text(
            "Hello Flutter",
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.amberAccent,
              fontWeight: FontWeight.bold,
              letterSpacing: -2.5,
              fontSize: 50,
              height: 1,
            ),
          ),
        ),
      ],
    );
  }
}