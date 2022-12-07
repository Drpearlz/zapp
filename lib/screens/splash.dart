import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';
import 'package:zapp/screens/intro/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //simulate delay before moving on to the Onboarding Screen
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const OnboardingPage(),
        ),
      );
    });

    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo2.png')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(mainPurple),
              ),
            ),
          )
        ],
      ),
    );
  }
}
