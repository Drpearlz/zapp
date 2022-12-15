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
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  labelText:
                    "Search Doctors, Clinics ...",
                  labelStyle: TextStyle(
                    fontFamily: "NotoSansJP",
                    fontSize: 16.59,
                    color: Colors.black87,
                    fontWeight: FontWeight.w200
                  ),
                  filled: true,
                  fillColor: Colors.white
                ),
              ),
            ),
          ),
        ),
        body: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.hybrid,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
    );
  }
}

