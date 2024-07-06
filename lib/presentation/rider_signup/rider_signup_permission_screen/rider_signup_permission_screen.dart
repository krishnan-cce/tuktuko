import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../core/utils/route_constant.dart';
import '../../../core/utils/string_resources.dart';

class RiderSignUpPermissionScreen extends StatelessWidget {
  const RiderSignUpPermissionScreen({super.key});

  Future<void> requestPermissions(BuildContext context) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.location,
      Permission.camera,
      Permission.storage,
    ].request();

    if (statuses[Permission.location]!.isGranted &&
        statuses[Permission.camera]!.isGranted &&
        statuses[Permission.storage]!.isGranted) {
      // All permissions are granted
      Navigator.of(context).pushNamed(RouteConstant.riderSignupNoPermissionScreen);
    } else {
      // Handle the scenario when permissions are not granted
      Navigator.of(context).pushNamed(RouteConstant.riderGetStartedScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to TukTukO',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: HexColor('043C32'),
                  ),
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Allow the following permissions to continue:', // Adjusted text for example
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => requestPermissions(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('005556'),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}