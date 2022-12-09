import 'package:flutter/material.dart';
import 'package:zapp/utils/logo_text.dart';

//Class the stacks the shapes on the logoText

class HealthLogo extends StatelessWidget {
  const HealthLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Center(
          //   child: CircleAvatar(
          //     radius: 200,
          //     // backgroundColor: Color.fromARGB(82, 19, 27, 33),
          //     // foregroundColor: Colors.red,
          //     child: Stack(
          //       children: const [
          //         Positioned(
          //           right: 50,
          //           top: 10,
          //           child: Text("ojoij"),
          //         ),
          //         Text("coijij"),
          //       ],
          //     ),
          //   ),
          // ),

          //ToDo: Build the random shapes behind with any doabl
          LogoText(size: 150, showText: true)
        ],
      ),
    );
  }
}
