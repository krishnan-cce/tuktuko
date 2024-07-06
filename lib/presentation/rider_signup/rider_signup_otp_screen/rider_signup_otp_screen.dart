import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tuktuko/core/widgets/rounded_text_input_field.dart';

import '../../../core/utils/route_constant.dart';

class RiderSignUpOtpScreen extends StatelessWidget {
  RiderSignUpOtpScreen({super.key});


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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Insert the code',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: HexColor('043C32')
                  ),
                ),

                const SizedBox(height: 16),

                const Text(
                  'Enter the code sent to +39 342 3223432',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),

                const SizedBox(height: 24),

                OtpTextField(
                  numberOfFields: 6,
                  showFieldAsBox: false,
                  borderWidth: 4.0,
                  onCodeChanged: (String code) {
                  },
                  onSubmit: (String verificationCode) {

                  },
                ),

                const SizedBox(height: 16),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Resend the code',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: HexColor('005556')
                      ),
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>{
                  Navigator.of(context).pushNamed(RouteConstant.homeScreen)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: HexColor('005556'),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text(
                  'Next',
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
