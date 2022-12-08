import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ClientScreenWidget extends StatelessWidget {
  final icon;
  final text;
  ClientScreenWidget({required this.icon, required this.text});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('$text details Checked');
      },
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFF7B6CA8),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Raleway',
                  color: Color(0xFF7B6CA8)),
            ),
          ),
          Spacer(),
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
