import 'package:flutter/material.dart';
import '../../constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 2),
            SizedBox(
              child: Image.asset("assets/images/logo2.png"),
            ),
            const Spacer(),
            const Text(
              "Welcome to Jejelove Health !",
              style: TextStyle(
                color: kPrimaryColor,
                //fontFamily: 'Montserrat',
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
                  onPressed: () {},
                  child: const Text(
                    "Create Account",
                    // style: TextStyle(
                    //   fontSize: getProportionateScreenHeight(18),
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
                  child: Container(
                    // height: 50,
                    // width: 200,
                    decoration: BoxDecoration(
                      // color: kPrimaryColor,

                      border: Border.all(
                        color: kPrimaryColor,
                        // width: 5.0,
                      ),
                      borderRadius: BorderRadius.all(
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
