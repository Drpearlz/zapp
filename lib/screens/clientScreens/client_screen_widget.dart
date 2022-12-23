import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClientScreenWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onpressed;
  const ClientScreenWidget(
      {Key? key, required this.icon, required this.text, this.onpressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF7B6CA8),
          ),
          // const Gap(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: GoogleFonts.raleway(
                  fontSize: 18,
                 
                  color: Color(0xFF7B6CA8)),
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 25,
            color: Color(0xFF7B6CA8),
          ),
        ],
      ),
    );
  }
}
