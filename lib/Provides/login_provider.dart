import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:loging_page/Constant.dart';
import '../models/loging_model.dart';
import '../screens/Home.dart';

class LoginProvider extends ChangeNotifier {
  String? _username;
  String? _password;
  bool isLoading = false;
  LogingModel? userModel;
  final box = GetStorage();

  LoginProvider() {
    readUserData();
  }

  // GetName Function
  getUserName(String username) {
    this._username = username;
    notifyListeners();
  }

  // GetPassword Function
  getPassword(String password) {
    this._password = password;
    notifyListeners();
  }

  getUser(BuildContext context) async {
    try {
      isLoading = true;
      notifyListeners();
      // Wuxu Ku haya Xogti An Gudbin lahayn o nagala rapaby
      var data = {"username": _username, "password": _password};

      // Wuxu noo Diraya Request-gayna
      var response = await http.post(
        Uri.parse(baseUrlUser + 'user/login'),
        body: jsonEncode(data),
        headers: {"Content-Type": "application/json"},
      );

      // Waxan Hubinayna Response Si nadif ah Ma udhacay
      if (response.statusCode == 200) {
        var decoded = json.decode(response.body);
        userModel = LogingModel.fromJson(decoded);
        SaveUserData(userModel!);
        print(userModel!.photo);

        Navigator.push(
            context, MaterialPageRoute(builder: (_) => HomeScreen()));
      }
    } catch (e) {
      print(e);
    }
    isLoading = false;
    notifyListeners();
  }

  // Save User Data into Local Storage phone

  SaveUserData(LogingModel data) {
    box.write(KUserData, data.toJson());
  }

  // Read User Data into Local Storage phone
  readUserData() {
    bool hasdata = box.hasData(KUserData);
    if (hasdata) {
      final UserData = box.read(KUserData);
      userModel = LogingModel.fromJson(UserData);
      notifyListeners();
    }
  }
}
