import 'package:flutter/material.dart';
import 'package:loging_page/screens/SignIn.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Image(image: AssetImage('images/re.webp')),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Text(
                                'Regester',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blue[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                // == Input ==
                Container(
                  margin: EdgeInsets.all(14),
                  child: TextField(
                    style: TextStyle(fontSize: 20),
                    // obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      fillColor: Color(0xffE1E8FB),
                      filled: true,
                      suffixIcon: Icon(Icons.person),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(14),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 20),
                    // obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      //Color(0xffD6DEF5),
                      fillColor: Color(0xffE1E8FB),
                      filled: true,
                      suffixIcon: Icon(Icons.email),
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(14),
                  child: TextField(
                    maxLength: 8,
                    style: TextStyle(fontSize: 20),
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      fillColor: Color(0xffE1E8FB),
                      filled: true,
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0),
                  height: 65,
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      //elevation: 20,
                      side: BorderSide(width: 3, color: Colors.blueAccent),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(32)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Register',
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

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'I have an acoount',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => SignIn(),
                              ),
                            );
                          },
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.blue[600],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )

                // == End ==
              ],
            )
          ],
        ),
      ),
    );
  }
}
