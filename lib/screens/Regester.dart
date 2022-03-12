import 'package:flutter/material.dart';
import 'package:loging_page/screens/SignIn.dart';
import 'package:page_transition/page_transition.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    bool _obscureText = true;
    final _formkey = GlobalKey<FormState>();
    return Form(
      key: _formkey,
      child: Scaffold(
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
                                    fontFamily: 'Pacifico',
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffEE4062),
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
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required';
                        } else {
                          return null;
                        }
                      },
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
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'E-mail is required';
                        } else {
                          return null;
                        }
                      },
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
                          //color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(14),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required';
                        } else {
                          return null;
                        }
                      },
                      maxLength: 8,
                      style: TextStyle(fontSize: 20),
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(25),
                          ),
                        ),
                        fillColor: Color(0xffE1E8FB),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                          child: Icon(_obscureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
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
                        side: BorderSide(width: 3, color: Color(0xffEE4062)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(32)),
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Your Regestration succefully Compeleted'),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Register',
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
                                  PageTransition(
                                      childCurrent: widget,
                                      duration: Duration(milliseconds: 600),
                                      reverseDuration:
                                          Duration(milliseconds: 600),
                                      type: PageTransitionType.bottomToTop,
                                      child: SignIn()));
                            },
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xffEE4062),
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
      ),
    );
  }
}
