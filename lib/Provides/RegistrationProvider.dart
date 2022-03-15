import 'dart:convert';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:loging_page/Constant.dart';

import '../screens/SignIn.dart';

class ResgisterProvider extends ChangeNotifier {
  String? _fullName;
  String? _userName;
  String? _password;
  String get name => _fullName!;
  bool isLoading = false;

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
  request(BuildContext context) async {
    isLoading = true;
    notifyListeners();
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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Successfully Registred'),
          ),
        );
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => SignIn(),
          ),
        );
        //print('Every Things Goes Ok');
      } else {
        print(respnse.body);
      }
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }
}
