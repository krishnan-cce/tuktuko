import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:tuktuko/core/widgets/rounded_phone_input_text_field.dart';
import 'package:tuktuko/core/widgets/rounded_text_input_field.dart';

import '../../../core/utils/route_constant.dart';
import '../../../data/local/country_data.dart';

class RiderSignupMobileScreen extends StatelessWidget {
  RiderSignupMobileScreen({super.key});

  final TextEditingController phoneController = TextEditingController();
  CountryData selectedCountry = CountryData.countryList.firstWhere((country) => country.countryId == 'ZW');
  void _selectCountry() {
    // Logic to select a country (e.g., open a modal or navigate to another screen)
  }

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
                  'Almost done',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: HexColor('043C32')
                  ),
                ),
                const SizedBox(height: 16),

                RoundedPhoneInputTextField(
                  labelText: 'Phone number',
                  controller: phoneController,
                  selectedCountry: selectedCountry,
                  onCountryCodePressed: _selectCountry,
                ),

              ],
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: ()=>{
                  Navigator.of(context).pushNamed(RouteConstant.riderSignUpOtpScreen)
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
