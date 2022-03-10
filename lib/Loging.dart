import 'package:flutter/material.dart';
import 'package:loging_page/screens/SignIn.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[150],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40),
            child: Image(
              image: AssetImage('images/intro.png'),
            ),
          ),
          Container(
            child: Text(
              'Jamhuriya University of Scines & Technology ( JUST ) ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 23,
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
          Spacer(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
            height: 65,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SignIn(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
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
                side: BorderSide(width: 3, color: Colors.blueAccent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(32)),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: TextStyle(
                  fontFamily: 'Charm',
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.5,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
