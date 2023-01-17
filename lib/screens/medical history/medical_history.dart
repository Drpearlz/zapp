// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cards.dart';

class MedicalHistory extends StatelessWidget {
  const MedicalHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
        subtitle1: GoogleFonts.raleway(),
      )),
      home: Scaffold(
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              const SliverAppBar(
                leading: IconButton(
                  color: Color.fromARGB(228, 54, 1, 115),
                  icon: Icon(Icons.arrow_back),
                  onPressed: null,
                ),
                backgroundColor: Colors.white,
              ),
              SliverToBoxAdapter(
                child: Container(
                  height: 100,
                  color: Colors.white,
                  child: Center(
                    child: Container(
                      height: 100.49,
                      child: ListTile(
                        minVerticalPadding: 38,
                        title: Text(
                          'Medical History',
                          style: GoogleFonts.raleway(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(228, 54, 1, 115),
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'images/Close up on health worker.png'),
                            alignment: Alignment.centerRight),
                        color: Color.fromARGB(228, 229, 229, 229),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.zero,
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      width: 378.93,
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: CardsColumn(),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
