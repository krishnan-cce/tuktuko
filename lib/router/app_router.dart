import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tuktuko/presentation/launch_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_about_you_screen/rider_about_you_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_email_signup_screen/rider_email_signup_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_home_screen/rider_home_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_mobile_screen/rider_signup_mobile_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_no_permission_screen/rider_signup_no_permission_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_otp_screen/rider_signup_otp_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_permission_screen/rider_signup_permission_screen.dart';
import 'package:tuktuko/presentation/rider_signup/rider_signup_screen/rider_signup_screen.dart';
import 'package:tuktuko/presentation/rider_signup/terms_and_condition_screen/terms_and_condition_screen.dart';
import 'package:tuktuko/presentation/splash_screen/bloc/splash_screen_bloc.dart';
import 'package:tuktuko/presentation/splash_screen/splash_screen.dart';

import '../core/utils/route_constant.dart';
import '../secure_storage/secure_storage.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    SecureStorage secureStorage = SecureStorage();

    switch (settings.name) {

      case RouteConstant.splashScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SplashScreenBloc(secureStorage),
            child: const SplashScreen(),
          ),
        );

      case RouteConstant.launchScreen:
        return MaterialPageRoute(builder: (context)=> const LaunchScreen());

      case RouteConstant.riderSignupScreen:
        return MaterialPageRoute(builder: (context)=> const RiderSignUpScreen());

      case RouteConstant.termsAndConditionScreen:
        return MaterialPageRoute(builder: (context)=> const TermsAndConditionScreen());

      case RouteConstant.riderSignupPermissionScreen:
        return MaterialPageRoute(builder: (context)=> const RiderSignUpPermissionScreen());
        // if permissions are denied
      case RouteConstant.riderSignupNoPermissionScreen:
        return MaterialPageRoute(builder: (context)=> const RiderSignUpNoPermissionScreen());

      case RouteConstant.riderGetStartedScreen:
        return MaterialPageRoute(builder: (context)=> RiderEmailSignUpScreen());

      case RouteConstant.riderAboutYouScreen:
        return MaterialPageRoute(builder: (context)=> RiderAboutYouScreen());

      case RouteConstant.riderSingUpMobileScreen:
        return MaterialPageRoute(builder: (context)=> RiderSignupMobileScreen());

      case RouteConstant.riderSignUpOtpScreen:
        return MaterialPageRoute(builder: (context)=> RiderSignUpOtpScreen());

      case RouteConstant.homeScreen:
        return MaterialPageRoute(builder: (context)=> RiderHomeScreen());


      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: const Center(child: Text("Page not found !")),
      );
    });
  }

}