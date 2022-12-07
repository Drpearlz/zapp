import 'package:flutter/material.dart';
import '../../constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Spacer(),
          SizedBox(
            child: Image.asset("assets/images/logo2.png"),
          ),
          const Text("Welcome to Jejelove Health !"),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Container(
              // style: ElevatedButton.styleFrom(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   backgroundColor: kPrimaryColor,
              // ),
              // onPressed: press as void Function()?,
              // onPressed: () {},
              child: const Text(
                "Create Account",
                // style: TextStyle(
                //   fontSize: getProportionateScreenHeight(18),
                // ),
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: double.infinity,
            height: 50,
            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     backgroundColor: kPrimaryColor,
            //   ),
            //   // onPressed: press as void Function()?,
            //   onPressed: () {},
            //   child: const Text(
            //     "Sign In",
            //     // style: TextStyle(
            //     //   fontSize: getProportionateScreenHeight(18),
            //     // ),
            //   ),
            // ),
            child: GestureDetector(
              child: Container(
                // height: 50,
                // width: 200,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  // borderRadius: BorderRadius.all(
                  //   Radius.circular(50.0),
                  // ),
                ),
                child: const Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: GestureDetector(
              child: Container(
                // height: 50,
                // width: 200,
                decoration: const BoxDecoration(
                  //color: Colors.black54,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Create Account',
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
        ],
      ),
    );
  }
}
