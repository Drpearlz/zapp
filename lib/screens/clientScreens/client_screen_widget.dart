import 'package:flutter/material.dart';

class ClientScreenWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function()? onpressed;
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
