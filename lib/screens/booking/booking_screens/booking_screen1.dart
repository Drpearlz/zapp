import 'package:flutter/material.dart';

class BookingScreenOne extends StatelessWidget {
  const BookingScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Text('Booking'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
