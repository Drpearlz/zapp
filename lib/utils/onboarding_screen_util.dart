import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zapp/constant.dart';

class OnboardingScreenUtil extends StatelessWidget {
  final String backgroundImg;
  final String onBoardMsgHeading;
  final String onBoardMsgBody;
  final String nextMsg;
  final String buttonText;
  final String logoType;

  const OnboardingScreenUtil(
      {super.key,
      required this.backgroundImg,
      required this.onBoardMsgHeading,
      required this.onBoardMsgBody,
      this.nextMsg = 'Skip',
      this.buttonText = 'Next',
      this.logoType = 'assets/images/logo_transparent.png'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImg),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 400,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0x007d77ee),
                    //Color(0x928ef1),
                    //Color(0xFF635BEB),
                    kPrimaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.4]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.97,
                  left: 259.87,
                ),
                child: Image.asset(
                  logoType,
                  width: 80.0,
                  height: 70.31,
                ),
              ),
              const Spacer(),
              Text(
                onBoardMsgHeading,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 3,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                onBoardMsgBody,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pusheNamed(context, '/welcome');
                },
                child: Text(
                  nextMsg,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Row(
                        children: [
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                        ),
                        child: Row(
                          children: [
                            Text(
                              buttonText,
                              style: const TextStyle(
                                color: kPrimaryColor, //Color(0xFF635BEB),
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: kPrimaryColor, //Color(0xFF635BEB),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
