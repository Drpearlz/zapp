import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:zapp/screens/booking/booking_screens/booking_screen1.dart';
import 'package:zapp/screens/booking/booking_screens/booking_screen3.dart';

import 'booking_screens/booking_screen2.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: Column(
            children: [
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/');
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
                      onPressed: () {},
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
              SizedBox(
                height: 30,
                child: TabBar(
                  labelColor: const Color(0xFF432C81),
                  unselectedLabelColor: Colors.grey[700],
                  tabs: const [
                    Tab(
                      text: '1. TIME',
                    ),
                    Tab(
                      text: '2. DETAILS',
                    ),
                    Tab(
                      text: '3. FINISH',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    BookingScreenOne(),
                    BookingScreenTwo(),
                    BookingScreenThree(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
