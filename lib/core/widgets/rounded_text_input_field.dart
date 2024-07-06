import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class RoundedTextInputField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final IconData? trailingIcon;
  final VoidCallback? onTrailingIconPressed;

  const RoundedTextInputField({
    super.key,
    required this.labelText,
    required this.controller,
    this.trailingIcon,
    this.onTrailingIconPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            color: HexColor('455A64'),
            fontSize: 14,
          ),
        ),

        TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1.0,
              ),
            ),
            suffixIcon: trailingIcon != null
                ? IconButton(
              icon: Icon(trailingIcon, color: Colors.grey),
              onPressed: onTrailingIconPressed,
            )
                : null,
          ),
        ),
      ],
    );
  }
}
