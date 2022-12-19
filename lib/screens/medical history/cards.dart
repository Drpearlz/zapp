import 'package:flutter/material.dart';
import 'package:zapp/screens/medical%20history/card_content.dart';

class CardsColumn extends StatelessWidget {
  const CardsColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 26.72),
      padding: const EdgeInsets.all(17.7),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(17.72),
        ),
        // topLeft: Radius.circular(17.72),
        // topRight: Radius.circular(17.72),
        // ),
        color: Color.fromARGB(228, 229, 229, 229),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: myList.map((data) {
            return ReusableCard(
              day: data.day,
              description: data.title,
            );
          }).toList(),
          // ignore: prefer_const_literals_to_create_immutables
        ),
      ),
    );
  }
}
