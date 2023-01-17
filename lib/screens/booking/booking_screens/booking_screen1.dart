import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zapp/constant.dart';

class BookingScreenOne extends StatefulWidget {
  const BookingScreenOne({Key? key}) : super(key: key);

  @override
  State<BookingScreenOne> createState() => _BookingScreenOneState();
}

class _BookingScreenOneState extends State<BookingScreenOne> {
  DateTime today = DateTime.now();
  int currentIndex = 0;

  void _selectedDay(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Todays date: ${today.toString().split(" ")[0]}'),
            Container(
                width: MediaQuery.of(context).size.width * .9,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffCBC8F8)),
                child: TableCalendar(
                  locale: "en_us",
                  rowHeight: 35,
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false, titleCentered: true),
                  availableGestures: AvailableGestures.all,
                  focusedDay: today,
                  firstDay: DateTime.utc(1999, 12, 28),
                  lastDay: DateTime.utc(2040, 12, 28),
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: _selectedDay,
                )),
            const Gap(20),
            Text('Available Time',
                style: GoogleFonts.raleway(
                    fontSize: 15, fontWeight: FontWeight.bold)),
            const Gap(20),
            SizedBox(
              height: 100,
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 3,
                    crossAxisCount: 4,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: currentIndex == index
                            ? const Color(0xffCBC8F8)
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text("10: 00 AM",
                            style: GoogleFonts.raleway(fontSize: 15)),
                      ),
                    ),
                  );
                },
              ),
            ),
            Gap(20),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: kPrimaryColor,
                ),
                onPressed: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => ,
                  //   ),
                  // );
                },
                child: Text("Next",
                    style: GoogleFonts.sourceSansPro(fontSize: 18)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
