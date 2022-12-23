import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zapp/screens/booking/booking_screens/booking_screen1.dart';
import 'booking_screens/booking_screen2.dart';
import 'booking_screens/booking-confirmed_screen.dart';

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
                        // Navigator.pushNamed(context, '/');
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        // color: Color(0xFF432C81),
                        size: 24,
                      ),
                    ),
                    Text(
                      'Booking',
                      style: GoogleFonts.raleway(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const Gap(140),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BookingConfirmedScreen()),
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
              const Gap(25),
              SizedBox(
                height: 30,
                child: TabBar(
                  labelColor: const Color(0xFF625be9),
                  indicatorColor: const Color(0xFF625be9),
                  indicatorWeight: 4,
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
                    BookingConfirmedScreen(),
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
