


import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:utile_app/themes/app_colors.dart';

class CustomFields extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final onChanged;

  final suffixIcon;
  final validator;

  final bool obscureText;
  final keyboardType;
  const CustomFields(
      {super.key,
        required this.hintText,
        this.keyboardType,
        this.validator,
        required this.controller,
        required this.obscureText,
        this.suffixIcon,
        this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      onChanged: onChanged,
      style: const TextStyle(color: Colors.black),
      keyboardType: keyboardType,
      decoration: InputDecoration(
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffB3261E), width: 2),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffF89554), width: 2),
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.fieldsMainColor, width: 1),
          ),
          hintText: hintText,
          hintStyle: GoogleFonts.openSans(
            color: AppColors.fieldsMainColor,
            fontWeight: FontWeight.w400,
            fontSize: 15,
          )),
    );
  }
}