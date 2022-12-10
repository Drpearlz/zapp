import 'dart:async';
import 'package:flutter/material.dart';
import 'package:zapp/utils/onboarding_screen_util.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();
  int currentIndex = 0;
  var currentTabs = [

    const OnboardingScreenUtil(
      backgroundImg: 'assets/images/onboarding_1.png',
      onBoardMsgHeading: 'Skip Long Wait Times',
      onBoardMsgBody:
        'Skip long wait times, by booking ahead\nto see a health professional in Nigeria.',
    ),
    const OnboardingScreenUtil(
      backgroundImg: 'assets/images/onboarding_2.png',
      onBoardMsgHeading: 'Help on-the-go',
      onBoardMsgBody:
        'Chat with licensed professionals\non the go, via mobile',
    ),
    const OnboardingScreenUtil(
      backgroundImg: 'assets/images/onboarding_3.png',
      onBoardMsgHeading: 'Thousands of Doctors',
      onBoardMsgBody:
        'Connect with the best doctors and\nhealth care workers in the country',
    ),
const OnboardingScreenUtil(
      backgroundImg: 'assets/images/onboarding_4.png',
      onBoardMsgHeading: 'Access to Emergency Services',
      onBoardMsgBody:
        'Connect easily with thousands of licensed\n\t\t\t\t\t\t\t\thealth professionals in your areas',
      logoType: 'assets/images/logo_non_trans.png',
    ),
    const OnboardingScreenUtil(
      backgroundImg: 'assets/images/onboarding_5.png',
      onBoardMsgHeading: 'Access Your Health Records',
      onBoardMsgBody:
        '    Get access and keep track of all your\n health reports and prescriptions, at your\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t fingertips',
      buttonText: 'Get Started',
    ),

  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentIndex < 2) {
        currentIndex++;
        pageController.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
        );
      } else {
        currentIndex = 2;
      }
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        children: currentTabs,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
