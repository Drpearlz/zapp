import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookingScreenTwo extends StatefulWidget {
  const BookingScreenTwo({super.key});

  @override
  State<BookingScreenTwo> createState() => _BookingScreenTwoState();
}

class _BookingScreenTwoState extends State<BookingScreenTwo> {
  String? callType = 'Video Call';
  String? visit = 'Yes';
  String? paymentProcess = 'After visit';
  var selected = 'No Insurance';
  final insuranceList = [
    'No Insurance',
    'YTL Insurance',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Set type of call',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                RadioListTile(
                  title: const Text(
                    'Video Call',
                    style: TextStyle(fontSize: 15),
                  ),
                  activeColor: const Color(0xFF625be9),
                  value: 'Video Call',
                  groupValue: callType,
                  onChanged: (value) {
                    setState(() {
                      callType = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: const Text(
                    'Hospital-Clinic visit',
                    style: TextStyle(fontSize: 15),
                  ),
                  value: 'Hospital-Clinic visit',
                  activeColor: const Color(0xFF625be9),
                  groupValue: callType,
                  onChanged: (value) {
                    setState(() {
                      callType = value.toString();
                    });
                  },
                ),
                const Divider(),
                const Gap(10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Do you have insurance?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                          alignment: AlignmentDirectional.center,
                          isExpanded: true,
                          // dropdownColor: const Color(0xFF432C81),
                          hint: const Text('Do you have insurance?'),
                          value: selected,
                          items: insuranceList
                              .map((e) =>
                                  DropdownMenuItem(value: e, child: Text(e)))
                              .toList(),
                          onChanged: (String? value) {
                            setState(() {
                              selected = value!;
                            });
                          }),
                    ),
                    const Divider(),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Write the reason of your visit, please',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Placeholder',
                                filled: true,
                                fillColor: Color(0xFF625be9),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          ),
                        ),
                      ],
                    ),
                    const Gap(15),
                    const Divider(),
                    const Gap(10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'You may upload related EHR files, if you wish',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Gap(5),
                        const Text(
                          'These files will only be available for your doctor.',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton.icon(
                            label: const Text('UPLOAD'),
                            icon: const Icon(Icons.upload),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 18,
                              ),
                              backgroundColor: const Color(0xFF625be9),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Divider(),
            const Gap(10),
            const Text(
              'Have you visit this doctor before',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            RadioListTile(
              title: const Text(
                'Yes',
                style: TextStyle(fontSize: 15),
              ),
              activeColor: const Color(0xFF625be9),
              value: 'Yes',
              groupValue: visit,
              onChanged: (value) {
                setState(() {
                  visit = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text(
                'No',
                style: TextStyle(fontSize: 15),
              ),
              value: 'No',
              activeColor: const Color(0xFF625be9),
              groupValue: visit,
              onChanged: (value) {
                setState(() {
                  visit = value.toString();
                });
              },
            ),
            const Divider(),
            const Gap(10),
            const Text(
              'Payment Process',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            RadioListTile(
              title: const Text(
                'After visit',
                style: TextStyle(fontSize: 15),
              ),
              activeColor: const Color(0xFF625be9),
              value: 'After visit',
              groupValue: paymentProcess,
              onChanged: (value) {
                setState(() {
                  paymentProcess = value.toString();
                });
              },
            ),
            RadioListTile(
              title: const Text(
                'Before visit',
                style: TextStyle(fontSize: 15),
              ),
              value: 'Before visit',
              activeColor: const Color(0xFF625be9),
              groupValue: paymentProcess,
              onChanged: (value) {
                setState(() {
                  paymentProcess = value.toString();
                });
              },
            ),
            const Gap(10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  minimumSize: const Size.fromHeight(60),
                  backgroundColor: const Color(0xFF625be9),
                ),
                child: const Text('NEXT'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
