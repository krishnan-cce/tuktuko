import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/route_constant.dart';

class RiderSignUpScreen extends StatelessWidget {
  const RiderSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Signup',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: HexColor('043C32')
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {  },
                      ),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: 'By selecting “Create Account” you are confirming that you have read and agree to TukTukO ',
                            style: const TextStyle(fontSize: 16),
                            children: [
                              TextSpan(
                                text: 'Terms and conditions',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: HexColor('005556'),
                                  fontWeight: FontWeight.bold,
                                ),

                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed(RouteConstant.termsAndConditionScreen);
                                  },
                              ),
                              const TextSpan(text: ' and '),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: HexColor('005556'),
                                  fontWeight: FontWeight.bold,
                                ),

                                  recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(context).pushNamed(RouteConstant.termsAndConditionScreen);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: ()=>{
                  Navigator.of(context).pushNamed(RouteConstant.riderSignupPermissionScreen)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: HexColor('005556'),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                  child: const Text(
                    'Create your account',
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
