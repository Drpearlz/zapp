import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/constant.dart';

//widgets that shoes Dont have an account on Auth Screens
class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account ? ",
          style: GoogleFonts.raleway(
            fontSize: 18,
          ),
        ),
        GestureDetector(
          // onTap: () => Navigator.pushNamed(context, SignUpScreeen.routeName),
          onTap: () => Navigator.pushNamed(context, '/login'),
          child: const Text(
            "Login",
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'SourceSansPro',
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
