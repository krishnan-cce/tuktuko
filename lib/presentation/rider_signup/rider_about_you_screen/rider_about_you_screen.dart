import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tuktuko/core/widgets/rounded_text_input_field.dart';

import '../../../core/utils/route_constant.dart';

class RiderAboutYouScreen extends StatelessWidget {
   RiderAboutYouScreen({super.key});

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
                  'About you',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: HexColor('043C32')
                  ),
                ),
                const SizedBox(height: 16),

                RoundedTextInputField(
                  labelText: 'Name',
                  controller: nameController,
                ),

                const SizedBox(height: 4),

                RoundedTextInputField(
                  labelText: 'Surname',
                  controller: nameController,
                ),

                const SizedBox(height: 4),

                RoundedTextInputField(
                  labelText: 'Gender (optional)',
                  controller: nameController,
                  trailingIcon: Icons.arrow_drop_down,
                  onTrailingIconPressed: () {

                  },
                )

              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>{
                Navigator.of(context).pushNamed(RouteConstant.riderSingUpMobileScreen)
                },
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
