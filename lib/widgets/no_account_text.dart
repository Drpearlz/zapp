import 'package:flutter/material.dart';
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
        const Text(
          "Already have an account ? ",
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'SourceSansPro',
          ),
        ),
        GestureDetector(
<<<<<<< HEAD
          // onTap: () => Navigator.pushNamed(context, SignUpScreeen.routeName),
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
=======
          onTap: () => Navigator.pushNamed(context,'/login'),
>>>>>>> 6f3faa4545efda9fe0f015ee5ac548a0ed45fb8e
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
