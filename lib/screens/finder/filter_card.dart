import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({super.key, required this.text, required this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              height: 47,
              width: 47,
              decoration: BoxDecoration(
                color: const Color(0xFF6574CF).withOpacity(0.08),
                borderRadius: BorderRadius.circular(4.5),
              ),
              child: Icon(
                icon,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
          Text(
            text,
            style: GoogleFonts.raleway(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 22.0),
            child: Container(
              padding: const EdgeInsets.only(right: 16, left: 15),
              height: 36,
              width: 77,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.4),
                color: const Color(0xFFC9E7E5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Any',
                    style: GoogleFonts.raleway(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF8F9BB3),
                    ),
                  ),
                  Transform.rotate(
                    angle: 90 * pi / 180,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          size: 15,
                          color: Colors.black,
                        ),
                        items: const [],
                        onChanged: (value) {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
