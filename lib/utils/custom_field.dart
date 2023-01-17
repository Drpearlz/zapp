import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.revealText = true,
  });

  final String hintText;
  final Icon? suffixIcon;
  final bool revealText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: revealText,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF7B6BA8),
          fontFamily: 'Raleway',
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.82),
          borderSide: const BorderSide(
            color: Color(0xFFEDECF4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.82),
          borderSide: const BorderSide(
            color: Color(0xFFEDECF4),
          ),
        ),
      ),
    );
  }
}
