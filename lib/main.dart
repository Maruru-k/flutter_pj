import 'package:flutter/material.dart';
import 'package:flutter_pj/provaiders/auth.dart';
import 'package:flutter_pj/screens/home.dart';
import 'package:flutter_pj/screens/login.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Auth(),
      child: Consumer<Auth>(
        builder: (ctx, auth, _) => MaterialApp(
          title: "Tooba",
          theme: ThemeData(
            colorScheme: const ColorScheme.light(primary: Color(0xFF00CE62)),
            //primaryColor: const Color(0xFF00CE62),
          ),
          home: auth.isAuthenticated ? HomeScreen() : LoginScreen(),
        ),
      ),
    );
  }
}
