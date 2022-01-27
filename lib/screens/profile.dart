import 'package:flutter/material.dart';
import 'package:flutter_pj/provaiders/auth.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Profile screen", style: TextStyle(fontSize: 20)),
        ElevatedButton(
          child: const Text("Logout", style: TextStyle(fontSize: 18)),
          onPressed: (){
            Provider.of<Auth>(context, listen: false).logout();
          },
        )
      ],
    );
  }
}
