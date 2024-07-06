import 'package:flutter/material.dart';

import '../../data/local/country_data.dart';

class RoundedPhoneInputTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final CountryData selectedCountry;
  final VoidCallback onCountryCodePressed;

  const RoundedPhoneInputTextField({
    super.key,
    required this.labelText,
    required this.controller,
    required this.selectedCountry,
    required this.onCountryCodePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            GestureDetector(
              onTap: onCountryCodePressed,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      selectedCountry.flag,
                      style: TextStyle(fontSize: 24),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      selectedCountry.countryCode,
                      style: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class RoundedPhoneInputTextField extends StatelessWidget {
//   final String labelText;
//   final TextEditingController controller;
//   final CountryData selectedCountry;
//   final VoidCallback onCountryCodePressed;
//
//   const RoundedPhoneInputTextField({
//     super.key,
//     required this.labelText,
//     required this.controller,
//     required this.selectedCountry,
//     required this.onCountryCodePressed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           labelText,
//           style: TextStyle(
//             color: Colors.grey[600],
//             fontSize: 14,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12),
//           decoration: BoxDecoration(
//             border: Border.all(color: Colors.grey),
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: onCountryCodePressed,
//                 child: Row(
//                   children: [
//                     Text(
//                       selectedCountry.flag,
//                       style: const TextStyle(fontSize: 24),
//                     ),
//                     const SizedBox(width: 8),
//                     Text(
//                       selectedCountry.countryCode,
//                       style: TextStyle(
//                         color: Colors.grey[800],
//                         fontSize: 16,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 8),
//               Expanded(
//                 child: Center(
//                   child: TextField(
//                     controller: controller,
//                     keyboardType: TextInputType.number,
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                     ),
//                     style: const TextStyle(
//                       fontSize: 16,
//                     )
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }