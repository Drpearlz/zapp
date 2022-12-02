import 'package:flutter/material.dart';
import 'package:zapp/screens/onboarding.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => const OnboardingPage())
      );
    });

    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(Icons.code_rounded, color: Colors.black, size: 80),
          //we could try to add image of our logo instead of icon
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black.withOpacity(0.2)),
              strokeWidth: 10,
            ),
          )
        )
      ],
    );
  }
}
