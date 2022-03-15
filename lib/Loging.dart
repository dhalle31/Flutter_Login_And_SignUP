import 'package:flutter/material.dart';
import 'package:loging_page/screens/Regester.dart';
import 'package:loging_page/screens/SignIn.dart';
import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 40),
              child: Image(
                height: 260,
                image: AssetImage('images/intro.png'),
              ),
            ),
            Container(
              child: Text(
                'JTech ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Color(0xffEE4062),
                ),
              ),
            ),
            Container(
              child: Text(
                'Jamhuriya Technology Solutions ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  color: Color(0xff3C3B59),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Text(
                'A well-educated mind will always have more questions than answers. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[500],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              height: 65,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Get.to(() => SignIn(), transition: Transition.zoom);
                  Navigator.push(
                      context,
                      PageTransition(
                          childCurrent: this,
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          type: PageTransitionType.leftToRight,
                          child: SignIn()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3C3B59),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(32)),
                  ),
                  //shadowColor: Colors.grey[350],
                ),
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontFamily: 'Charm',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                    // color: Color(0xffEE4062),
                    color: Color(0xffffffffff),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0),
              height: 65,
              width: double.infinity,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: BorderSide(width: 3, color: Color(0xffEE4062)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(32)),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          childCurrent: this,
                          duration: Duration(milliseconds: 600),
                          reverseDuration: Duration(milliseconds: 600),
                          type: PageTransitionType.rightToLeft,
                          child: Register()));
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Charm',
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.5,
                    color: Color(0xff3C3B59),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
