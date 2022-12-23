import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'filter_card.dart';
import 'quickfilter_card.dart';

class FinderScreen extends StatefulWidget {
  const FinderScreen({super.key});

  @override
  State<FinderScreen> createState() => _FinderScreenState();
}

class _FinderScreenState extends State<FinderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FC),
      //AppBar section
      appBar: AppBar(
        backgroundColor: const Color(0xFF6574CF),
        title: const Center(
            child: Text(
          'Radiology',
        )),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, bottom: 10),
            child: Container(
              height: 35,
              width: 66,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0xFFFFCC70),
              ),
              child: Center(
                  child: Text(
                'Cancel',
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              )),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 17.94,
            ),
            // Quick Filter
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Text(
                'Quick Filter',
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 7.51,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const QuickFilterCard(
              text: 'Available Today',
              icon: Icons.calendar_month,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const QuickFilterCard(
              text: 'Within 50km',
              icon: Icons.location_on_outlined,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const QuickFilterCard(
              text: '5.0 Rating',
              icon: Icons.star_border_outlined,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              // Filter By
              child: Text(
                'Filter By',
                style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Doctor\'s Experience',
              icon: FontAwesomeIcons.ribbon,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Insurance',
              icon: Icons.shield_outlined,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Payment',
              icon: Icons.payment,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Visit Type',
              icon: Icons.videocam_outlined,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Availability',
              icon: Icons.calendar_month_outlined,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const FilterCard(
              text: 'Rating',
              icon: Icons.star_outline,
            ),
            const Divider(
              thickness: 0.5,
            ),
            // Apply Filter Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Container(
                width: 380.87,
                height: 44.42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.4),
                  color: const Color(0xFF1EC760),
                ),
                child: Center(
                  child: Text(
                    'APPLY FILTER',
                    style: GoogleFonts.raleway(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
