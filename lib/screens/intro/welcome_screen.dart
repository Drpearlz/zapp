import 'package:flutter/material.dart';
import 'package:zapp/screens/sign_up/sign_up.dart';
import '../../constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(flex: 2),
            SizedBox(
              child: Image.asset("assets/images/logo2.png"),
            ),
            const Spacer(),
            const Text(
              "Welcome to Jejelove Health !",
              style: TextStyle(
                color: kPrimaryColor,
                fontFamily: 'Righteous',
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                // letterSpacing: 2.0,
              ),
            ),
            const Spacer(),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    backgroundColor: kPrimaryColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Create Account",
                    // style: TextStyle(

                    // ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: GestureDetector(
                  onTap:(){
                    Navigator.of(context).pushNamed('/login');},
                  child: Container(
                    // height: 50,
                    // width: 200,
                    decoration: BoxDecoration(
                      // color: kPrimaryColor,

                      border: Border.all(
                        color: kPrimaryColor,
                        // width: 5.0,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: kPrimaryColor
                            //fontFamily: 'Montserrat',
                            //fontSize: 18.0,
                            // letterSpacing: 2.0,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}