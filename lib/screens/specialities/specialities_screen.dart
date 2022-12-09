import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'grid_dash_board.dart';

class SpecialitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                // widget(
                //   child: 29
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Color(0xFF432C81),
                    size: 32,
                  ),
                ),
                const Gap(25),
                const Text(
                  'Specialities',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SourceSansPro'),
                ),
              ],
            ),
          ),
          const Gap(25),
          GridDashBoard(),
        ],
      ),
    );
  }
}
