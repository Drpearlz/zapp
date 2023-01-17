import 'package:flutter/material.dart';

class QuickFilterCard extends StatelessWidget {
  const QuickFilterCard({super.key, required this.text, required this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0,bottom:10),
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
              child:Icon(
                icon,size:25,),
            ),
          ),
          const SizedBox(
            width: 17,
          ),
         Text(
            text,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Transform.scale(
            scale: 1.2,
            child: Checkbox(
              side: const BorderSide(width: 1, color: Color(0xFF8F9BB3)),
              fillColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.disabled)) {
                  return const Color(0xFF8F9BB3);
                }
                return const Color(0xFF8F9BB3);
              }),
              value: false,
              onChanged: (value) {},
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
            ),
          )
        ],
      ),
    );
  }
}