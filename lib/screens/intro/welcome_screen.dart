// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/constant.dart';
import '../login/login_screen.dart';
import '../sign_up/sign_up_1.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 150),
                // Logo
                Stack(
                  children: [
                    Center(child: Image.asset('assets/logo/flaked-logo.png')),
                    SizedBox(height: 5),
                    Positioned(
                      left: 145,
                      bottom: 30,
                      child: Text(
                        'Jejelove Health',
                        style: GoogleFonts.righteous(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: mainPurple),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 100),

                // Welcome to Jejelove Health!
                Text(
                  'Welcome to Jejelove Health!',
                  style: GoogleFonts.righteous(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: mainPurple),
                ),
                SizedBox(height: 70),

                // Buttons
                Column(
                  children: [
                    // Create account button
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen1(),
                          )),
                      child: Container(
                        width: 366,
                        height: 52.97,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(30.82)),
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: GoogleFonts.raleway(
                                color: white,
                                fontSize: 17.34,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25.03),

                    //Sign in button
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            )),
                        child: Container(
                          width: 366,
                          height: 52.97,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: mainPurple,
                              ),
                              borderRadius: BorderRadius.circular(30.82)),
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.raleway(
                                  color: mainPurple,
                                  fontSize: 17.34,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
