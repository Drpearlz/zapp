import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingConfirmedScreen extends StatelessWidget {
  const BookingConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
          constraints: const BoxConstraints.expand(height: 300.0),
          width: MediaQuery.of(context).size.width * 0.65,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Illustrationbookconf.png"),
                  fit: BoxFit.cover)),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width * 0.60,
          child: FittedBox(
            fit: BoxFit.fitHeight,
            child: Text(
              "Booking Confirmed",
              style: GoogleFonts.righteous(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.w500,
                  fontSize: 22.0),
            ),
          ),
        ),
        SizedBox(
          child: Text(
            "An Email has been sent to you",
            style: GoogleFonts.raleway(
                color: Colors.deepPurple,
                fontWeight: FontWeight.w300,
                fontSize: 13.0),
          ),
        )
      ],
    )));
  }
}
