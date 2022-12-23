import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableCard extends StatelessWidget {
  final String day;
  final String description;
  const ReusableCard({required this.day, required this.description});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 11),
      color: Colors.white,
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
          child: Text(
            day,
            style: GoogleFonts.raleway(
                color: Color.fromARGB(228, 54, 1, 115),
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            description,
            style: GoogleFonts.raleway(
              fontSize: 14,
              color: const Color.fromARGB(228, 54, 1, 115),
            ),
          ),
        ),
      ),
    );
  }
}

class CardContent {
  String day;
  String title;

  CardContent({required this.day, required this.title});
}

List<CardContent> myList = [
  CardContent(
      day: 'Today', title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'yesterday', title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Wed, 7 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Thu, 8 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Fri, 9 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Sat, 10 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Tue, 13 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
  CardContent(
      day: 'Wed, 14 Nov',
      title: 'Lorem ipsum dolor sit amet, consectetur Lo...'),
];
