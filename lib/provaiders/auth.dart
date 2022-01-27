import 'package:flutter/cupertino.dart';

class Auth with ChangeNotifier {
  String? _accessToken;

  bool get isAuthenticated {
    return _accessToken != null;
  }

  Future<void> loginAnonymously() async{
    print("Login");
    _accessToken = "Token";
    notifyListeners();
  }

  Future<void> logout() async{
    print("Logout");
    _accessToken = null;
    notifyListeners();
  }
}
