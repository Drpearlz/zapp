import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class BookingConfirmedScreen extends StatelessWidget {
  const BookingConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
          children: [
            // Custom app bar
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, '/');
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      // color: Color(0xFF432C81),
                      size: 24,
                    ),
                  ),
                  const Text(
                    'Booking',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'SourceSansPro'),
                  ),
                  const Gap(130),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BookingConfirmedScreen()),
                      );
                    },
                    icon: const Icon(
                      Icons.location_on_outlined,
                      // color: Color(0xFF432C81),
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(35),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 64.0),
              constraints: const BoxConstraints.expand(height: 300.0),
              width: MediaQuery.of(context).size.width * 0.65,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/Illustrationbookconf.png"),
                      fit: BoxFit.cover)),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              width: MediaQuery.of(context).size.width * 0.60,
              child: const FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                  "Booking Confirmed",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Righteous',
                      fontSize: 22.0),
                ),
              ),
            ),
            Container(
              child: Text(
                "An Email has been sent to you",
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Raleway',
                    fontSize: 13.0),
              ),
            )
          ],
        )
        )
    );
  }
}
