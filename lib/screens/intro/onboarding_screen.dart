import 'package:flutter/material.dart';
import 'package:zapp/utils/onboarding_screen_util.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();

  @override
/*
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = _controller.page!.toDouble();
        print(currentPage);
      });
    });
    super.initState();
  }
*/
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        children: const [
          OnboardingScreenUtil(
            backgroundImg: 'assets/images/onboarding_1.png',
            onBoardMsgHeading: 'Skip Long Wait Times',
            onBoardMsgBody:
                'Skip long wait times, by booking ahead\nto see a health professional in Nigeria.',
          ),
          OnboardingScreenUtil(
            backgroundImg: 'assets/images/onboarding_2.png',
            onBoardMsgHeading: 'Help on-the-go',
            onBoardMsgBody:
                'Chat with licensed professionals\n\t\t\t\t\t\t\t\t\t\t\t\t\on the go, via mobile',
          ),
          OnboardingScreenUtil(
            backgroundImg: 'assets/images/onboarding_3.png',
            onBoardMsgHeading: 'Thousands of Doctors',
            onBoardMsgBody:
                'Connect with the best doctors and\nhealth care workers in the country',
          ),
          OnboardingScreenUtil(
            backgroundImg: 'assets/images/onboarding_4.png',
            onBoardMsgHeading: 'Access to Emergency Services',
            onBoardMsgBody:
                'Connect easily with thousands of licensed\n\t\t\t\t\t\t\t\thealth professionals in your areas',
            logoType: 'assets/images/logo_non_trans.png',
          ),
          OnboardingScreenUtil(
            backgroundImg: 'assets/images/onboarding_5.png',
            onBoardMsgHeading: 'Access Your Health Records',
            onBoardMsgBody:
                '    Get access and keep track of all your\n health reports and prescriptions, at your\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t fingertips',
            buttonText: 'Get Started',
          ),
        ],
      ),
    );
  }
}
