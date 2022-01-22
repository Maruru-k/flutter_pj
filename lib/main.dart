import 'package:flutter/material.dart';

void main() {
  runApp(MyWidgetApp());
}

class MyWidgetApp extends StatelessWidget {
  // final double topMargin = 30;
  //
  // @override
  // Widget build(BuildContext context) {
  //   return Stack(
  //     alignment: Alignment.topCenter,
  //     textDirection: TextDirection.ltr,
  //     children: <Widget>[
  //       Container(
  //         margin: EdgeInsets.only(top: topMargin),
  //         color: Colors.white,
  //       ),
  //       Container(
  //         alignment: Alignment.topCenter,
  //         margin: EdgeInsets.only(top: topMargin),
  //         padding: EdgeInsets.only(top: 20),
  //         color: Colors.teal,
  //         height: 90,
  //         child: const Text(
  //           "Hello Flutter",
  //           textDirection: TextDirection.ltr,
  //           textAlign: TextAlign.center,
  //           style: TextStyle(
  //             color: Colors.amberAccent,
  //             fontWeight: FontWeight.bold,
  //             letterSpacing: -2.5,
  //             fontSize: 50,
  //             height: 1,
  //           ),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text("MyWidgetApp"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              LinearProgressIndicator(value: 45),
              Text(
                "45%",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Text(
                "Press button to download",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.teal,
          child: Icon(Icons.download_rounded, size: 30),
        ),
      ),
    );
  }
}
