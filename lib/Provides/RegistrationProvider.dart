import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:loging_page/Constant.dart';

class ResgisterProvider extends ChangeNotifier {
  String? _fullName;
  String? _userName;
  String? _password;
  String get name => _fullName!;

// Geting User's FullName
  getFullName(String FullName) {
    this._fullName = FullName;
    notifyListeners();
  }

// Geting User's UserName
  getUserName(String Username) {
    this._userName = Username;
    notifyListeners();
  }

  // Geting User's Password
  getPassword(String Password) {
    this._password = Password;
    notifyListeners();
  }

  // Send Request
  request() async {
    try {
      var Data = {
        "name": _fullName,
        "username": _userName,
        "password": _password,
        "photo": "null"
      };

      var respnse = await http.post(Uri.parse(baseUrlUser + "user"),
          body: jsonEncode(Data),
          headers: {"Content-Type": "application/json"});
      if (respnse.statusCode == 200) {
        print("Sucess");
      } else {
        print(respnse.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
