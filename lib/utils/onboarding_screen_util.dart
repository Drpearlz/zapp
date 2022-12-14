import 'package:flutter/material.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zapp/constant.dart';
import 'package:zapp/screens/intro/welcome_screen.dart';

class OnboardingScreenUtil extends StatefulWidget {

  final String backgroundImg;
  final String onBoardMsgHeading;
  final String onBoardMsgBody;
  final PageController controller; //changed here
  final String nextMsg;
  final String buttonText;
  final String logoType;

  const OnboardingScreenUtil(
      {super.key,
      required this.backgroundImg,
      required this.onBoardMsgHeading,
      required this.onBoardMsgBody,
      required this.controller, //changed here
      this.nextMsg = 'Skip',
      this.buttonText = 'Next',
      this.logoType = 'assets/images/logo_transparent.png'});

  @override
  State<OnboardingScreenUtil> createState() => _OnboardingScreenUtilState();
}

class _OnboardingScreenUtilState extends State<OnboardingScreenUtil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.backgroundImg),
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
                  widget.logoType,
                  width: 80.0,
                  height: 70.31,
                ),
              ),
              const Spacer(),
              Text(
                widget.onBoardMsgHeading,
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
                widget.onBoardMsgBody,
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
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const WelcomePage(),
                    ),
                  );
                },
                child: Text(
                  widget.nextMsg,
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
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          Container(
                            height: 5.0,
                            width: 22.0,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (widget.buttonText == 'Next') {
                          widget.controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        } else {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const WelcomePage(),
                            ),
                          );
                        }
                      },
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
                              widget.buttonText,
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
