import 'package:flutter/material.dart';
import 'package:zapp/constant.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({super.key, required this.menuCardText, required this.menuCardImage});

  final String menuCardText;
  final AssetImage menuCardImage;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: cardShape,
      color: cardColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            'Your Diet Chart',
            style: TextStyle(
                color: deepPurple,
                fontSize: menuTextSize,
                fontFamily: menuFontFamily,
                fontWeight: menuFontWeight),
          ),
          Container(
            margin: const EdgeInsets.all(8.0),
            child:  Image(
               image: menuCardImage),
          )
        ],
      ),
    );
  }
}
