import 'package:flutter/material.dart';
import 'package:zapp/screens/clientScreens/client_screen.dart';
import 'package:zapp/screens/intro/onboarding.dart';
import 'package:zapp/screens/intro/welcome_screen.dart';
import 'package:zapp/screens/login/login_screen.dart';
import 'package:zapp/screens/sign_up/sign_up.dart';
import 'package:zapp/screens/splash.dart';

import 'utils/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // home: SplashScreen

      // for those that wwant to check each screens separately,
      // just edit the '/' in the initial route to any of the routes e.g '/login'
      // initialRoute: '/',
      // // This is the routes for the different screens so far
      // routes: {
      //   '/': (context) => const ClientScreen(),
      //   '/sign_up': (context) => const SignUpScreen(),
      //   '/welcome': (context) => const WelcomeScreen(),
      //   '/onboarding': (context) => const OnboardingPage(),
      //   '/login': (context) => const LoginScreen(),
      // },
      home: BottomBar(),
    );
  }
}
