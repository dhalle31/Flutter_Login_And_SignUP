import 'package:flutter/cupertino.dart';

class LoginProvider extends ChangeNotifier {
  String? _userName;
  String? _password;

  // GetName Function
  getUserName(String userName) {
    this._userName = userName;
    notifyListeners();
  }

  // GetPassword Function
  getPassword(String password) {
    this._password = password;
    notifyListeners();
  }
}
