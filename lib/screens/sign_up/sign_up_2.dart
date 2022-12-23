import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/constant.dart';
import 'package:zapp/utils/custom_field.dart';

import '../../widgets/social_cards.dart';

class SignUpScreen2 extends StatefulWidget {
  const SignUpScreen2({super.key});

  @override
  State<SignUpScreen2> createState() => _SignUpScreen2State();
}

class _SignUpScreen2State extends State<SignUpScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.65, right: 30.65),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hello there,',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: deepPurple,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const Image(
                        height: 45,
                        width: 45,
                        image: AssetImage(
                          'assets/logo/logo_transparent 6.png',
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Sign Up',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.raleway(
                    color: deepPurple,
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -1,
                  ),
                ),
                const SizedBox(height: 7.7),
                const Image(
                  image: AssetImage(
                    'assets/images/Ivan Samkov.png',
                  ),
                ),
                const SizedBox(height: 20),
                const CustomField(hintText: 'Full Name'),
                const SizedBox(height: 17.7),
                const CustomField(hintText: 'Email'),
                const SizedBox(height: 17.7),
                const CustomField(
                  revealText: true,
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 46.55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: deepPurple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.raleway(
                        color: white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  'or Using Social Media',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.righteous(
                    color: black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 10),
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 45, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'Not a Health Worker?',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: lightPurple,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 8.85),
                      Text(
                        'Sign Up Here',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.raleway(
                          color: deepPurple,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
