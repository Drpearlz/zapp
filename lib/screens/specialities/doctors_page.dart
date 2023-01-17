import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'All Doctors',
              ),
              Tab(
                text: 'My Doctor',
              )
            ],
          ),
          title: const Text('All Doctors'),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
          ],
        ),
      ),
    );
  }
}
/*
class DoctorPage extends StatelessWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
  }
}
*/
/*
DefaultTabController(
child: Scaffold(
body: Padding(
padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
child: Column(
children: [
const Gap(30),
Row(
crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [
const Text(
'All Doctors',
style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
),
const Spacer(),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.search,
size: 30,
)),
IconButton(
onPressed: () {},
icon: const Icon(
Icons.location_on_outlined,
size: 30,
))
],
),
const Gap(20),
const TabBar(
tabs: [
Tab(
text: 'All Doctors',
),
Tab(
text: 'My Doctor',
),
],
),
const TabBarView(children: [
Center(child: Text('Doctors')),
Center(child: Text('My Doctor'))
])
],
),
),
),
length: 2,
);*/
