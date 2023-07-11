import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'HomeScreen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Welcome to Craiglist ",
                      style: GoogleFonts.anekDevanagari(
                          fontSize: 25,
                          color: Color(0xFF8A2FAD),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Sign in to continue",
                      style: GoogleFonts.anekDevanagari(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //username
                  Center(
                    child: Container(
                      height: 65,
                      width: 290,
                      color: Color(0xFF9E32DD).withOpacity(.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 2),
                            child: Text(
                              "UserName",
                              style: GoogleFonts.anekDevanagari(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  //password
                  Center(
                    child: Container(
                      height: 65,
                      width: 290,
                      color: Color(0xFF9E32DD).withOpacity(.05),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 20, top: 2),
                            child: Text(
                              "Password",
                              style: GoogleFonts.anekDevanagari(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //forgotpassword
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.anekDevanagari(
                              fontSize: 16,
                              color: Color(0xFF8A2FAD),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                  //login
                  Center(
                    child: Container(
                        // color: Colors.white,
                        height: 50,
                        width: MediaQuery.of(context).size.width - 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color(0xFF8A2FAD),
                                Color(0xFFE06CFB),
                              ]),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.grey.shade200,
                                offset: Offset(2, 4),
                                blurRadius: 5,
                                spreadRadius: 2)
                          ],
                          // color: PRIMARY_CLR
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width - 20, 50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          child: Text(
                            "Login",
                            style: GoogleFonts.anekDevanagari(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //signup
                  Center(
                    child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(builder: (context) =>  SignupScreen()));
                      },
                      child: Container(
                        child: Text(
                          "Signup?",
                          style: GoogleFonts.anekDevanagari(
                              fontSize: 18,
                              color: Color(0xFF8A2FAD),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
