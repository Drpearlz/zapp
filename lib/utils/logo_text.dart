import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zapp/constant.dart';

//Class that build the Logo and Text
class LogoText extends StatelessWidget {
  LogoText({this.showText = true, required this.size, super.key});

  bool? showText;
  double? size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                bottom: -15,
                child: RotatedBox(
                  quarterTurns: -2,
                  child: Icon(
                    Icons.favorite,
                    size: size,
                    color: const Color(0XFFAFADF5),
                  ),
                ),
              ),
              Icon(
                Icons.favorite,
                color: const Color(0XFF978AC0).withOpacity(0.85),
                size: size,
              ),
            ],
          ),
        ),
        const Gap(20),
        showText == true
            ? const Text(
                "Jejelove Health",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontFamily: 'Righteous',
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0,
                  // letterSpacing: 2.0,
                ),
              )
            : const Text(""),
      ],
    );
  }
}
