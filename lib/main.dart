import 'package:flutter/material.dart';
import 'package:loging_page/Constant.dart';
import 'package:loging_page/Loging.dart';
import 'package:loging_page/screens/Home.dart';
import 'package:loging_page/screens/Regester.dart';
import 'package:loging_page/screens/SignIn.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Provides/Login_provider.dart';
import 'Provides/RegistrationProvider.dart';
import 'package:provider/provider.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  final box = GetStorage();
  bool islogin = box.hasData(KUserData);
  runApp(
    // ignore: prefer_const_constructors
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ResgisterProvider>(
            create: (_) => ResgisterProvider()),
        ChangeNotifierProvider<LoginProvider>(
          create: (_) => LoginProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: islogin == true ? HomeScreen() : SignIn(),
        //LoginPage()
        //LoginPage()
      ),
    ),
  );
}
