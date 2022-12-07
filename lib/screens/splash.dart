import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';
import 'package:zapp/screens/intro/onboarding.dart';
import 'package:zapp/screens/login/login_screen.dart';

//Splash screen - Displays logo for 2 seconds and mocves to next screen
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //simulate delay before moving on to the Onboarding Screen
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset('assets/images/logo2.png'),
            ),
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
      ),
    );
  }
}
