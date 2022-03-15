import 'package:flutter/material.dart';
import 'package:loging_page/Loging.dart';
import 'package:loging_page/screens/Regester.dart';
import 'package:loging_page/screens/SignIn.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'Provides/Login_provider.dart';
import 'Provides/RegistrationProvider.dart';
import 'package:provider/provider.dart';

void main() {
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
        home: LoginPage(),
        //LoginPage()
        //LoginPage()
      ),
    ),
  );
}
