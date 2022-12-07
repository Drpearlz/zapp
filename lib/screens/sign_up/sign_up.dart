import 'package:flutter/material.dart';
import '../../constant.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            const SizedBox(height: 15),
            // Spacer(flex: 2),
            SizedBox(
              child: Image.asset("assets/images/logo1.png"),
            ),
            // const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                // height: 50,
                // width: 200,
                decoration: BoxDecoration(
                  color: lightGray,
                  border: Border.all(color: lightGray
                      // width: 5.0,
                      ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Righteous',
                        fontSize: 24.0,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: kPrimaryColor),
                        hintText: "Enter your Email Address",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.mail),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: kPrimaryColor),
                        hintText: "Enter your password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelStyle: TextStyle(color: kPrimaryColor),
                        hintText: "Enter your password",
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    )
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
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
                    "Continue",
                    // style: TextStyle(

                    // ),
                  ),
                ),
              ),
            ),
            // const SizedBox(height: 15),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 50),
            //   child: SizedBox(
            //     width: double.infinity,
            //     height: 50,
            //     child: GestureDetector(
            //       child: Container(
            //         // height: 50,
            //         // width: 200,
            //         decoration: BoxDecoration(
            //           // color: kPrimaryColor,

            //           border: Border.all(
            //             color: kPrimaryColor,
            //             // width: 5.0,
            //           ),
            //           borderRadius: BorderRadius.all(
            //             Radius.circular(50.0),
            //           ),
            //         ),
            //         child: const Center(
            //           child: Text(
            //             'Sign In',
            //             style: TextStyle(color: kPrimaryColor
            //                 //fontFamily: 'Montserrat',
            //                 //fontSize: 18.0,
            //                 // letterSpacing: 2.0,
            //                 ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
