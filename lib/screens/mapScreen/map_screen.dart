import 'dart:async';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zapp/constant.dart';

class Map_Screen extends StatefulWidget {
  const Map_Screen({Key? key}) : super(key: key);
  @override
  State<Map_Screen> createState() => _Map_ScreenState();
}
  Completer<GoogleMapController> _controller = Completer();
  const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

class _Map_ScreenState extends State<Map_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_sharp),
            onPressed: () { },
          ),
          title: const Center(
              child: Text("Map", style: TextStyle(
                fontFamily: "NotoSansJP",
                fontSize: 19.87,
                fontWeight: FontWeight.bold,
              ),
              )
          ),
          actions: [
            IconButton(
              iconSize: 19.87,
             icon: const Icon(FontAwesomeIcons.filter),
              onPressed: () {  },
          )
          ],
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(70.0),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 17.7,top: 2.0, bottom: 2.0, right: 17.7),
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search, color: Colors.black87),
                  labelText:
                    "Search Doctors, Clinics ...",
                  labelStyle: TextStyle(
                    fontFamily: "NotoSansJP",
                    fontSize: 16.59,
                    color: Colors.black87,
                  ),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              mapType: MapType.hybrid,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 265,
                width: 395,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      lightPurple,
                      kPrimaryColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                      stops: [0.1, 0.9]
                  )
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12.17, top: 45.35, right: 13.25, bottom: 20.35),
                      child: Container(
                          height: 230.84,
                          width: 177.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.38),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/image1.png"),
                                    radius: 29.0,
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10.0),
                                        color: Colors.green
                                      ),
                                    ),
                                  )
                                ]
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                  height: 26.28,
                                  width: 59.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.19),
                                    color: Colors.purple[100]
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.star
                                    ),
                                    SizedBox(
                                      width: 5.84,
                                    ),
                                    Text("4.5",
                                    style: TextStyle(
                                      fontSize: 15.34,
                                      fontFamily: "NotoSansJP",
                                      fontWeight: FontWeight.bold
                                    ),
                                    )
                                  ],
                                ),
                              ),
                              const Center(
                                child: Text(
                                  "Kenjo Obed",
                                  style: TextStyle(
                                    fontSize: 20.43,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: "NotoSansJP",
                                      fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),

                              const Text("Paediatrician",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15.70,
                                fontFamily: "NotoSansJP",
                                fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400
                              ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                            ),
                            Text(
                              "Paediatrician",
                              style: GoogleFonts.raleway(
                                  color: Colors.grey,
                                  fontSize: 15.70,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Container(
                              height: 26.28,
                              width: 124.87,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.38),
                                  color: LightGrayishCyan),
                              child: Center(
                                child: Text(
                                  "5 available spots",
                                  style: GoogleFonts.raleway(
                              Container(
                                  height: 26.28,
                                  width: 124.87,
                                decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(4.38),
                                  color: LightGrayishCyan

                                  color: lightGrayishCyan

                                ),
                                child: const Center(
                                  child: Text(
                                    "5 available spots",
                                    style: TextStyle(


                                     color: Colors.blueAccent,
                                      fontSize: 13.95,
                                      fontFamily: "NotoSansJP",
                                      fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                    // SECOND ROW
                    Padding(
                      padding: const EdgeInsets.only(top: 45.35, bottom: 20.35),
                      child: Container(
                        height: 230.84,
                        width: 177.45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.38),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 7),
                          child: Column(
                            children: [
                              Stack(
                                  children: [
                                    const CircleAvatar(
                                      backgroundImage: AssetImage("assets/images/image2.png"),
                                      radius: 29.0,
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      child: Container(
                                        height: 15,
                                        width: 15,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.0),
                                            color: Colors.green
                                        ),
                                      ),
                                    )
                                  ]
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 26.28,
                                width: 59.15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2.19),
                                    color: Colors.purple[100]
                                ),
                                child: Row(
                                  children: const [
                                    Icon(
                                        Icons.star
                                    ),
                                    SizedBox(
                                      width: 5.84,
                                    ),
                                    Text("4.5",
                                      style: TextStyle(
                                          fontSize: 15.34,
                                          fontFamily: "NotoSansJP",
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Center(
                                child: Text(
                                  "Tatiana Nwosu",
                                  style: TextStyle(
                                      fontSize: 20.43,
                                      fontStyle: FontStyle.normal,
                                      fontFamily: "NotoSansJP",
                                      fontWeight: FontWeight.w500
                                      fontWeight: FontWeight.w700),
                              Container(
                                height: 26.28,
                                width: 124.87,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.38),
                                    color: lightGrayishCyan
                                ),
                                child: const Center(
                                  child: Text(
                                    "3 available spots",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 13.95,
                                        fontFamily: "NotoSansJP",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700
                                    ),

                                  ),
                                ),
                              ),
                              const Text("Dermatologist",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.70,
                                    fontFamily: "NotoSansJP",
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                height: 26.28,
                                width: 124.87,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.38),
                                    color: LightGrayishCyan
                                ),
                                child: const Center(
                                  child: Text(
                                    "3 available spots",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 13.95,
                                        fontFamily: "NotoSansJP",
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 297.8,
              left: 12.17,
              child: Container(
                child: Column(
                  children: const [
                    Text("Igwuruta",
                      style:
                      TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontFamily: "Righteous",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 27.0),
                      child: Text("12 available",
                        style:
                      TextStyle(
                          color: Colors.white,
                          fontSize: 13.0,
                          fontFamily: "Righteous",
                          fontWeight: FontWeight.w400
                      ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
