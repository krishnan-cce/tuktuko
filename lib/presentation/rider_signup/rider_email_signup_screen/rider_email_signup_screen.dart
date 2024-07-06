import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tuktuko/core/widgets/rounded_text_input_field.dart';

import '../../../core/utils/route_constant.dart';

class RiderEmailSignUpScreen extends StatelessWidget {
  RiderEmailSignUpScreen({super.key});

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Get started',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: HexColor('043C32')
              ),
            ),
            const SizedBox(height: 16),

            RoundedTextInputField(
              labelText: 'Email address',
              controller: nameController,
            ),

            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>{
                Navigator.of(context).pushNamed(RouteConstant.riderAboutYouScreen)
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

            const SizedBox(height: 16),

            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Or',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14
                    ),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),

            const SizedBox(height: 16),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: HexColor('043C32')),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Continue with Google', style: TextStyle(
                    color: Colors.black)
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: HexColor('043C32')),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Continue with Facebook', style: TextStyle(
                    color: Colors.black)
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {

                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  side: BorderSide(color: HexColor('043C32')),
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text('Continue with Phone number', style: TextStyle(
                    color: Colors.black)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}