import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/utils/logo_text.dart';
import 'package:zapp/widgets/no_account_text.dart';
import 'package:zapp/widgets/social_cards.dart';
import '../../constant.dart';

class SignUpScreen1 extends StatelessWidget {
  const SignUpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 50),
              LogoText(size: 50),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  // padding:                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  // padding: const EdgeInsets.only(top: 20, left: 50, right: 50),
                  decoration: const BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          style: GoogleFonts.raleway(
                            color: black,
                            fontSize: 24.0,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelStyle:
                                  GoogleFonts.raleway(color: kPrimaryColor),
                              hintText: "Enter Email Address",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: Icon(Icons.mail),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelStyle:
                                  GoogleFonts.raleway(color: kPrimaryColor),
                              hintText: "Enter your password",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelStyle:
                                  GoogleFonts.raleway(color: kPrimaryColor),
                              hintText: "Confirm password",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: Icon(Icons.remove_red_eye),
                            ),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: kPrimaryColor,
                              ),
                              onPressed: () {},
                              child: Text(
                                "Continue",
                                style: GoogleFonts.raleway(
                                  //  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "Continue with social media",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SocialCard(
                              icon: "assets/icons/google-icon.svg",
                              press: () {},
                            ),
                            SocialCard(
                              icon: "assets/icons/facebook-2.svg",
                              press: () {},
                            ),
                            SocialCard(
                              icon: "assets/icons/twitter.svg",
                              press: () {},
                            ),
                          ],
                        ),
                        // Gap(20)
                        const SizedBox(height: 20),
                        const NoAccountText(),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.green,
                          height: 25,
                          width: double.infinity,
                          child: Center(
                            child: Text.rich(
                              TextSpan(
                                text: "Are you a health worker ? ",
                                style: GoogleFonts.raleway(
                                  color: white,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Click here",
                                    style: GoogleFonts.raleway(
                                      color: kPrimaryColor,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
