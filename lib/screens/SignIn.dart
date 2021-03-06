import 'package:flutter/material.dart';
import 'package:loging_page/screens/Regester.dart';
import 'package:page_transition/page_transition.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:loging_page/Provides/Login_provider.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    bool isShowing = true;
    return Form(
      key: _formkey,
      child: Consumer<LoginProvider>(builder: (context, response, _) {
        return ModalProgressHUD(
          inAsyncCall: response.isLoading,
          child: Scaffold(
            body: SingleChildScrollView(
              reverse: true,
              child: Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: Image(
                          image: AssetImage('images/login.webp'),
                          height: 250,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  'LogIn ',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffEE4062),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: Text(
                                  'Please login to continue our app ',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.all(14),
                        child: TextFormField(
                          onChanged: (userName) => context
                              .read<LoginProvider>()
                              .getUserName(userName),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Username or E-mail is required';
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
                            fillColor: Color(0xffE1E8FB),
                            filled: true,
                            hintText: 'Username Or E-mail',
                            // suffixIcon: new Icon(MdiIcons.email),
                            suffixIcon: FaIcon(FontAwesomeIcons.userAlt),

                            hintStyle: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        margin: EdgeInsets.all(14),
                        child: TextFormField(
                          onChanged: (password) => context
                              .read<LoginProvider>()
                              .getPassword(password),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            } else {
                              return null;
                            }
                          },
                          style: TextStyle(fontSize: 20),
                          maxLength: 8,
                          obscureText: isShowing,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                bottomRight: Radius.circular(32),
                              ),
                            ),
                            fillColor: Color(0xffE1E8FB),
                            filled: true,
                            suffixIcon: FaIcon(FontAwesomeIcons.lock),
                            // suffixIcon: GestureDetector(onTap: () {
                            //   isShowing = !isShowing;

                            //   FaIcon(isShowing
                            //       ? FontAwesomeIcons.eye
                            //       : FontAwesomeIcons.userAlt);
                            // }),
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
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              Provider.of<LoginProvider>(context, listen: false)
                                  .getUser(context);
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(
                              //     content: Text('Welcome Dear User . '),
                              //   ),
                              // );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xff3C3B59),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomRight: Radius.circular(32),
                              ),
                            ),
                          ),
                          child: Text(
                            'LogIn',
                            style: TextStyle(
                              fontFamily: 'Charm',
                              fontSize: 35,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.5,
                              color: Color(0xffffffffff),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Don\'t have an acoount',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          childCurrent: this,
                                          duration: Duration(milliseconds: 600),
                                          reverseDuration:
                                              Duration(milliseconds: 600),
                                          type: PageTransitionType.bottomToTop,
                                          child: Register()));
                                },
                                child: Text(
                                  ' Register ',
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
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
