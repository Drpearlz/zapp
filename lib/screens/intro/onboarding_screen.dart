import 'package:flutter/material.dart';
import 'package:zapp/utils/onboarding_screen_util.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: 0,
      keepPage: true,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var currentTabs = [
      OnboardingScreenUtil(
        backgroundImg: 'assets/images/onboarding_1.png',
        onBoardMsgHeading: 'Skip Long Wait Times',
        onBoardMsgBody:
            'Skip long wait times, by booking ahead\nto see a health professional in Nigeria.',
        controller: pageController,
      ),
      OnboardingScreenUtil(
        backgroundImg: 'assets/images/onboarding_2.png',
        onBoardMsgHeading: 'Help on-the-go',
        onBoardMsgBody:
            'Chat with licensed professionals\non the go, via mobile',
        controller: pageController,
      ),
      OnboardingScreenUtil(
        backgroundImg: 'assets/images/onboarding_3.png',
        onBoardMsgHeading: 'Thousands of Doctors',
        onBoardMsgBody:
            'Connect with the best doctors and\nhealth care workers in the country',
        controller: pageController,
      ),
      OnboardingScreenUtil(
        backgroundImg: 'assets/images/onboarding_4.png',
        onBoardMsgHeading: 'Access to Emergency Services',
        onBoardMsgBody:
            'Connect easily with thousands of licensed\n\t\t\t\thealth professionals in your areas',
        controller: pageController,
        logoType: 'assets/images/logo_non_trans.png',
      ),
      OnboardingScreenUtil(
        backgroundImg: 'assets/images/onboarding_5.png',
        onBoardMsgHeading: 'Access Your Health Records',
        onBoardMsgBody:
            '    Get access and keep track of all your\n health reports and prescriptions, at your\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t fingertips',
        controller: pageController,
        nextMsg: '',
        buttonText: 'Get Started',
      ),
    ];

    return Scaffold(
      body: PageView(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        reverse: false,
        pageSnapping: true,
        children: currentTabs,
        onPageChanged: (index) {
        },
      ),
    );
  }
}
