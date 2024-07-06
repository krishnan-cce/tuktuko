import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'package:tuktuko/core/utils/svg_icons.dart';
import 'package:tuktuko/core/widgets/home_app_bar.dart';


class RiderHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: HomeAppBar(),
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(45.4375, 12.3358),
              initialZoom: 13.0,
            ),
            children: [
              TileLayer(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c'],
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(45.4275, 12.3258),
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(SvgIcons.userPin),
                  ),
                  Marker(
                    point: LatLng(45.4375, 12.3358),
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(SvgIcons.userPin),
                  ),
                  Marker(
                    point: LatLng(45.4300, 12.3300),
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(SvgIcons.driverPin),
                  ),
                  Marker(
                    point: LatLng(45.4500, 12.3500),
                    width: 40,
                    height: 40,
                    child: SvgPicture.asset(SvgIcons.userPin),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 200, // Adjust height as needed
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.white.withOpacity(0.9),
                    Colors.white.withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100, // Adjust as needed to position below AppBar
            left: 16,
            right: 16,
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('CEFFAA'),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  foregroundColor: HexColor('005556'),
                  side: BorderSide(color: HexColor('005556')),
                ),
                child: const Text(
                  'Book a ride',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.7,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: const [
                      SizedBox(height: 20),
                      Text(
                        'Book your first ride!',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Your trips will appear here as you book them',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
