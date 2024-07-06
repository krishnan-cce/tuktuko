import 'package:flutter/material.dart';
import 'package:tuktuko/presentation/rider_signup/rider_about_you_screen/rider_about_you_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_email_signup_screen/rider_email_signup_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_mobile_screen/rider_signup_mobile_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_otp_screen/rider_signup_otp_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_screen/rider_signup_screen.dart';
import 'package:tuktuko/router/app_router.dart';

import 'core/utils/route_constant.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tuktuko',
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: RouteConstant.splashScreen,
    );
  }
}

