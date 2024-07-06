import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tuktuko/core/utils/svg_icons.dart';

import '../../core/utils/route_constant.dart';
import 'bloc/splash_screen_bloc.dart';
import 'events/splash_screen_event.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('005556'),
      body: BlocListener<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {
          Future.delayed(const Duration(seconds: 3), () {
            if (state.isSuccess) {
              Navigator.of(context).pushReplacementNamed(RouteConstant.launchScreen);
            } else {
              Navigator.of(context).pushReplacementNamed(RouteConstant.launchScreen);
            }
          });
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(SvgIcons.appLogo),
              const SizedBox(height: 120),
              AnimatedBuilder(
                animation: _controller,
                child: SvgPicture.asset(SvgIcons.appLoader),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * 3.14159,
                    child: child,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}