import 'package:flutter/material.dart';

class BookingScreenTwo extends StatefulWidget {
  const BookingScreenTwo({super.key});

  @override
  State<BookingScreenTwo> createState() => _BookingScreenTwoState();
}

class _BookingScreenTwoState extends State<BookingScreenTwo> {
  String visit = 'Video Call';
  var selected = 'No Insurance';
  final insuranceList = [
    'No Insurance',
    'YTL Insurance',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio(
            value: 'Video Call',
            groupValue: visit,
            onChanged: (value) {
              setState(() {
                visit = value.toString();
              });
            },
          ),
          Radio(
            value: 'Hospital-Clinic visit',
            groupValue: visit,
            onChanged: (value) {
              setState(() {
                visit = value.toString();
              });
            },
          ),
          Center(
            child: DropdownButton(
                alignment: AlignmentDirectional.center,
                isExpanded: true,
                dropdownColor: const Color(0xFF432C81),
                hint: const Text('Do you have insurance?'),
                value: selected,
                items: insuranceList
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (String? value) {
                  setState(() {
                    selected = value!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
