import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zapp/utils/logo_text.dart';
import 'package:zapp/widgets/no_account_text.dart';
import 'package:zapp/widgets/social_cards.dart';
import '../../constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    color: lightGray,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      children: [
                        const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: black,
                            //fontFamily: 'Righteous',
                            fontSize: 24.0,
                            letterSpacing: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: kPrimaryColor),
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
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: kPrimaryColor),
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
                            decoration: const InputDecoration(
                              labelStyle: TextStyle(color: kPrimaryColor),
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
                                primary: kPrimaryColor,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Continue",
                                style: TextStyle(
                                  //  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Continue with social media",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'SourceSansPro',
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
                          child: const Center(
                            child: Text.rich(
                              TextSpan(
                                text: "Are you a health worker ? ",
                                style: TextStyle(
                                  color: white,
                                  fontSize: 20,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Click here",
                                    style: TextStyle(
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
