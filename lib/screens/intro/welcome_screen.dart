import 'package:flutter/material.dart';
import 'package:zapp/screens/sign_up/sign_up.dart';
import 'package:zapp/utils/health_logo.dart';
import 'package:zapp/utils/logo_text.dart';
import '../../constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height *
                      0.3), //20% of the screen
              LogoText(
                size: 150,
                showText: false,
              ),
              // HealthLogo(),
              const Text(
                "Welcome to Jejelove Health !",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: 'Righteous',
                  fontWeight: FontWeight.w400,
                  fontSize: 25.0,
                ),
              ),
              //const Spacer(),
              const SizedBox(height: 15),
              // Expanded()
              // Spacer(),
              const AspectRatio(aspectRatio: 3),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: kPrimaryColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kPrimaryColor,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontFamily: 'SourceSansPro',
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
