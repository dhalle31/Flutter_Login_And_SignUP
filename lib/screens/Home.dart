import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:loging_page/Provides/Login_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<LoginProvider>(
          builder: (context, login, _) {
            return Text('Welcome: ${login.userModel!.username}');
          },
        ),
      ),
      body: Consumer<LoginProvider>(
        builder: (context, user, _) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Text('the name of user is : ${user.userModel!.name}'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
