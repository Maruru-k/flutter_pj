import 'package:flutter/material.dart';
import 'package:flutter_pj/provaiders/auth.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Provider.of<Auth>(context, listen: false).loginAnonymously();
            },
            child: const Text("Login anonymously"),
          ),
        ),
      ),
    );
  }
}
